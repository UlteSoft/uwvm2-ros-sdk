/**
 * @file bounded_records.h
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
 * @see document/platform/kuka/en_US/README.md
 */

/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_H
#define UWVM_ROS_BOUNDED_RECORDS_H

/** @brief Zero every aggregate field using the selected language's full initializer.
 * @details C11 uses the universal zero initializer; C++20 uses empty aggregate
 * initialization so strict missing-field diagnostics stay enabled.
 */
#ifndef UWVM_VENDOR_ZERO_INITIALIZER
# if defined(__cplusplus)
#  define UWVM_VENDOR_ZERO_INITIALIZER                                                                                                                         \
      {                                                                                                                                                        \
      }
# else
#  define UWVM_VENDOR_ZERO_INITIALIZER {0}
# endif
#endif

#include <stdint.h>
#include <stddef.h>
#include <float.h>
#include <limits.h>
#define UWVM_BOUNDED_INVALID 22u
#define UWVM_BOUNDED_TOO_LARGE 90u
#if defined(__cplusplus)
# define UWVM_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
#else
# define UWVM_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
#endif
UWVM_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 &&
                    FLT_MAX_EXP == 128 && DBL_MAX_EXP == 1024);

/** @brief Copy exact primitive/string bytes; compiler intrinsics avoid byte-at-a-time copies. */
static inline void uwvm_bounded_copy(void* out, void const* in, size_t n)
{
#if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
#else
    size_t i;
    for(i = 0; i < n; ++i)
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
#endif
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

/** @brief Complete ROS2 builtin_interfaces/msg/Duration value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Duration
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Duration;

#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_MAX_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_CODEC_IDENTITY "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_builtin_interfaces_msg_Duration field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_builtin_interfaces_msg_Duration.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_builtin_interfaces_msg_Duration with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_builtin_interfaces_msg_Duration with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
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
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_builtin_interfaces_msg_Duration transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_builtin_interfaces_msg_Duration value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Duration next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 builtin_interfaces/msg/Time value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Time
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Time;

#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MAX_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_CODEC_IDENTITY "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_builtin_interfaces_msg_Time field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_builtin_interfaces_msg_Time.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_builtin_interfaces_msg_Time with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_builtin_interfaces_msg_Time with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
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

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_builtin_interfaces_msg_Time transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
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

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_builtin_interfaces_msg_Time value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for std_msgs/msg/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text;

/** @brief Complete ROS2 std_msgs/msg/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_msgs_msg_Header
{
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text frame_id;
} roswasmc_bounded_2_std_msgs_msg_Header;

#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 76u
#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_std_msgs_msg_Header field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    if(value->frame_id.size > 64u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_std_msgs_msg_Header.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_std_msgs_msg_Header with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_std_msgs_msg_Header_write_fields(roswasmc_bounded_2_std_msgs_msg_Header const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_std_msgs_msg_Header with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int
    roswasmc_bounded_2_std_msgs_msg_Header_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 64u || value->frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_std_msgs_msg_Header transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_std_msgs_msg_Header value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 76u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_positions_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_velocities_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_accelerations_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_effort_sequence;

/** @brief Complete ROS2 trajectory_msgs/msg/JointTrajectoryPoint value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint
{
    /** @brief Declared field positions; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_positions_sequence positions;
    /** @brief Declared field velocities; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_velocities_sequence velocities;
    /** @brief Declared field accelerations; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_accelerations_sequence accelerations;
    /** @brief Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_effort_sequence effort;
    /** @brief Declared field time_from_start; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration time_from_start;
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint;

#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_MAX_WIRE_BYTES 408u
#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_MIN_WIRE_BYTES 24u
#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_CODEC_IDENTITY "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    if(!value)
        return 0;
    if(value->positions.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->velocities.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->accelerations.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->accelerations.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->effort.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->time_from_start))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    if(value->positions.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocities.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->accelerations.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->time_from_start);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->positions.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->velocities.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->accelerations.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->accelerations.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->effort.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->time_from_start, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->positions.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->positions.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocities.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocities.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->velocities.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->accelerations.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->accelerations.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->accelerations.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->effort.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->effort.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->effort.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->time_from_start))
        return 0;
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 408u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for trajectory_msgs/msg/JointTrajectory.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_text;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_text data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_points_sequence;

/** @brief Complete ROS2 trajectory_msgs/msg/JointTrajectory value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_sequence joint_names;
    /** @brief Declared field points; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_points_sequence points;
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory;

#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MAX_WIRE_BYTES 4164u
#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MIN_WIRE_BYTES 20u
#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_CODEC_IDENTITY "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 64u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->points.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value->points.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->points.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->points.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_write_fields(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->joint_names.data[i].data, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->points.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(&value->points.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 64u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->points.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->points.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->points.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 4164u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 geometry_msgs/msg/Vector3 value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Vector3
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
} roswasmc_bounded_2_geometry_msgs_msg_Vector3;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_MAX_WIRE_BYTES 24u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_MIN_WIRE_BYTES 24u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_CODEC_IDENTITY "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_geometry_msgs_msg_Vector3 field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
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
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_geometry_msgs_msg_Vector3.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
{
    (void)value;
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Vector3 with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
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
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Vector3 with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
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
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_geometry_msgs_msg_Vector3 transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_geometry_msgs_msg_Vector3 value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 geometry_msgs/msg/Quaternion value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Quaternion
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
    /** @brief Declared field w; canonical capacity is part of CODEC_IDENTITY. */
    double w;
} roswasmc_bounded_2_geometry_msgs_msg_Quaternion;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_MAX_WIRE_BYTES 32u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_MIN_WIRE_BYTES 32u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_CODEC_IDENTITY "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    next.x = 0x0.0p+0;
    next.y = 0x0.0p+0;
    next.z = 0x0.0p+0;
    next.w = 0x1.0000000000000p+0;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_geometry_msgs_msg_Quaternion field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
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
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_geometry_msgs_msg_Quaternion.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    (void)value;
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Quaternion with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
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
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Quaternion with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
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
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_geometry_msgs_msg_Quaternion transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_geometry_msgs_msg_Quaternion value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 geometry_msgs/msg/Transform value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Transform
{
    /** @brief Declared field translation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 translation;
    /** @brief Declared field rotation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion rotation;
} roswasmc_bounded_2_geometry_msgs_msg_Transform;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_MAX_WIRE_BYTES 56u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_MIN_WIRE_BYTES 56u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_CODEC_IDENTITY "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Transform_default(roswasmc_bounded_2_geometry_msgs_msg_Transform* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Transform next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&next.rotation);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_geometry_msgs_msg_Transform field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->translation))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value->rotation))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_geometry_msgs_msg_Transform.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->translation);
    n += roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value->rotation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Transform with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Transform_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->translation, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(&value->rotation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Transform with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Transform_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_geometry_msgs_msg_Transform* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->translation))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(p, n, offset, &value->rotation))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_geometry_msgs_msg_Transform transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Transform_encode(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Transform_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_geometry_msgs_msg_Transform value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Transform_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Transform* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Transform next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Transform_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 geometry_msgs/msg/Twist value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Twist
{
    /** @brief Declared field linear; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 linear;
    /** @brief Declared field angular; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 angular;
} roswasmc_bounded_2_geometry_msgs_msg_Twist;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_MAX_WIRE_BYTES 48u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_MIN_WIRE_BYTES 48u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_CODEC_IDENTITY "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_geometry_msgs_msg_Twist field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->linear))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->angular))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_geometry_msgs_msg_Twist.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->linear);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->angular);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Twist with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->linear, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->angular, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Twist with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int
    roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->linear))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->angular))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_geometry_msgs_msg_Twist transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_geometry_msgs_msg_Twist value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Twist next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_geometry_msgs_msg_Transform data[2];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_transforms_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_geometry_msgs_msg_Twist data[2];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_velocities_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_geometry_msgs_msg_Twist data[2];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_accelerations_sequence;

/** @brief Complete ROS2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint
{
    /** @brief Declared field transforms; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_transforms_sequence transforms;
    /** @brief Declared field velocities; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_velocities_sequence velocities;
    /** @brief Declared field accelerations; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_accelerations_sequence accelerations;
    /** @brief Declared field time_from_start; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration time_from_start;
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint;

#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_MAX_WIRE_BYTES 324u
#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_MIN_WIRE_BYTES 20u
#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_CODEC_IDENTITY                                                                     \
    "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_default(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value)
{
    if(!value)
        return 0;
    if(value->transforms.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->transforms.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(&value->transforms.data[i]))
                return 0;
        }
    }
    if(value->velocities.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->velocities.data[i]))
                return 0;
        }
    }
    if(value->accelerations.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->accelerations.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->time_from_start))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    if(value->transforms.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->transforms.size; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(&value->transforms.data[i]);
        }
    }
    n += 4;
    if(value->velocities.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->velocities.data[i]);
        }
    }
    n += 4;
    if(value->accelerations.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->accelerations.data[i]);
        }
    }
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->time_from_start);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
    unsigned char* p,
    size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->transforms.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->transforms.size; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Transform_write_fields(&value->transforms.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->velocities.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->velocities.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->accelerations.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->accelerations.data[i], p, offset);
        }
    }
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->time_from_start, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->transforms.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->transforms.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->transforms.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Transform_read_fields(p, n, offset, &value->transforms.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocities.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocities.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->velocities.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->accelerations.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->accelerations.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->accelerations.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->time_from_start))
        return 0;
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 324u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names; size excludes
 * padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_joint_names_text;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_joint_names_text data[2];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_joint_names_sequence;

/** @brief At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint data[4];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_points_sequence;

/** @brief Complete ROS2 trajectory_msgs/msg/MultiDOFJointTrajectory value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_joint_names_sequence joint_names;
    /** @brief Declared field points; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_points_sequence points;
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory;

#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_MAX_WIRE_BYTES 1516u
#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_MIN_WIRE_BYTES 20u
#define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_CODEC_IDENTITY                                                                          \
    "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_default(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 64u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->points.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(&value->points.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->points.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(&value->points.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_write_fields(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->joint_names.data[i].data, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->points.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(&value->points.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 64u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->points.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->points.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(p, n, offset, &value->points.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 1516u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for control_msgs/msg/JointTolerance.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_control_msgs_msg_JointTolerance_name_text;

/** @brief Complete ROS2 control_msgs/msg/JointTolerance value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_msg_JointTolerance
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_msg_JointTolerance_name_text name;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    double position;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    double velocity;
    /** @brief Declared field acceleration; canonical capacity is part of CODEC_IDENTITY. */
    double acceleration;
} roswasmc_bounded_2_control_msgs_msg_JointTolerance;

#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_MAX_WIRE_BYTES 92u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_MIN_WIRE_BYTES 28u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_CODEC_IDENTITY "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_control_msgs_msg_JointTolerance field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 64u || !uwvm_bounded_utf8(value->name.data, value->name.size))
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
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_control_msgs_msg_JointTolerance.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value)
{
    (void)value;
    size_t n = 0;
    n += 4 + value->name.size;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_msg_JointTolerance with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_control_msgs_msg_JointTolerance_write_fields(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
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
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_msg_JointTolerance with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_control_msgs_msg_JointTolerance_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_control_msgs_msg_JointTolerance* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 64u || value->name.size > n - *offset)
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
        uwvm_bounded_copy(&value->acceleration, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_control_msgs_msg_JointTolerance transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_control_msgs_msg_JointTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_msg_JointTolerance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_control_msgs_msg_JointTolerance value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_msg_JointTolerance_decode(void const* input, size_t length, roswasmc_bounded_2_control_msgs_msg_JointTolerance* value)
{
    roswasmc_bounded_2_control_msgs_msg_JointTolerance next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 92u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for control_msgs/msg/JointComponentTolerance.joint_name; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[512];
} roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_joint_name_text;

/** @brief Complete ROS2 control_msgs/msg/JointComponentTolerance value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance
{
    /** @brief Declared field joint_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_joint_name_text joint_name;
    /** @brief Declared field component; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t component;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    double position;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    double velocity;
    /** @brief Declared field acceleration; canonical capacity is part of CODEC_IDENTITY. */
    double acceleration;
} roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance;

#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_MAX_WIRE_BYTES 542u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_MIN_WIRE_BYTES 30u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_CODEC_IDENTITY "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
/** @brief Original scalar constant X_AXIS=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_X_AXIS UINT32_C(1)
/** @brief Original scalar constant Y_AXIS=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_Y_AXIS UINT32_C(2)
/** @brief Original scalar constant Z_AXIS=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_Z_AXIS UINT32_C(3)
/** @brief Original scalar constant TRANSLATION=4; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_TRANSLATION UINT32_C(4)
/** @brief Original scalar constant ROTATION=5; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_ROTATION UINT32_C(5)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value)
{
    if(!value)
        return 0;
    if(value->joint_name.size > 512u || !uwvm_bounded_utf8(value->joint_name.data, value->joint_name.size))
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
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value)
{
    (void)value;
    size_t n = 0;
    n += 4 + value->joint_name.size;
    n += 2;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_write_fields(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->joint_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->joint_name.data, value->joint_name.size);
    *offset += value->joint_name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->component, 2);
    *offset += 2;
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
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_name.size > 512u || value->joint_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->joint_name.data, p + *offset, value->joint_name.size);
    *offset += value->joint_name.size;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->component, &bits, 2);
    }
    *offset += 2;
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
        uwvm_bounded_copy(&value->acceleration, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance* value)
{
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 30u || length > 542u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_msg_JointTolerance data[12];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_path_tolerance_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance data[12];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_component_path_tolerance_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_msg_JointTolerance data[12];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_goal_tolerance_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance data[12];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_component_goal_tolerance_sequence;

/** @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal
{
    /** @brief Declared field trajectory; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory trajectory;
    /** @brief Declared field multi_dof_trajectory; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory multi_dof_trajectory;
    /** @brief Declared field path_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_path_tolerance_sequence path_tolerance;
    /** @brief Declared field component_path_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_component_path_tolerance_sequence component_path_tolerance;
    /** @brief Declared field goal_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_goal_tolerance_sequence goal_tolerance;
    /** @brief Declared field component_goal_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_component_goal_tolerance_sequence component_goal_tolerance;
    /** @brief Declared field goal_time_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration goal_time_tolerance;
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal;

#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_MAX_WIRE_BYTES 20920u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_MIN_WIRE_BYTES 64u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_CODEC_IDENTITY                                                                       \
    "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_default(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_default(&next.multi_dof_trajectory);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(&value->trajectory))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(&value->multi_dof_trajectory))
        return 0;
    if(value->path_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->path_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(&value->path_tolerance.data[i]))
                return 0;
        }
    }
    if(value->component_path_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_path_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(&value->component_path_tolerance.data[i]))
                return 0;
        }
    }
    if(value->goal_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->goal_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(&value->goal_tolerance.data[i]))
                return 0;
        }
    }
    if(value->component_goal_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_goal_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(&value->component_goal_tolerance.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->goal_time_tolerance))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_wire_size(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(&value->trajectory);
    n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_wire_size(&value->multi_dof_trajectory);
    n += 4;
    if(value->path_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->path_tolerance.size; ++i)
        {
            n += roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(&value->path_tolerance.data[i]);
        }
    }
    n += 4;
    if(value->component_path_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_path_tolerance.size; ++i)
        {
            n += roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(&value->component_path_tolerance.data[i]);
        }
    }
    n += 4;
    if(value->goal_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->goal_tolerance.size; ++i)
        {
            n += roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(&value->goal_tolerance.data[i]);
        }
    }
    n += 4;
    if(value->component_goal_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_goal_tolerance.size; ++i)
        {
            n += roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(&value->component_goal_tolerance.data[i]);
        }
    }
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->goal_time_tolerance);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_write_fields(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
    unsigned char* p,
    size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_write_fields(&value->trajectory, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_write_fields(&value->multi_dof_trajectory, p, offset);
    uwvm_bounded_put(p + *offset, value->path_tolerance.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->path_tolerance.size; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointTolerance_write_fields(&value->path_tolerance.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->component_path_tolerance.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->component_path_tolerance.size; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_write_fields(&value->component_path_tolerance.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->goal_tolerance.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->goal_tolerance.size; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointTolerance_write_fields(&value->goal_tolerance.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->component_goal_tolerance.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->component_goal_tolerance.size; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_write_fields(&value->component_goal_tolerance.data[i], p, offset);
        }
    }
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->goal_time_tolerance, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields(p, n, offset, &value->trajectory))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_read_fields(p, n, offset, &value->multi_dof_trajectory))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->path_tolerance.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->path_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->path_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_read_fields(p, n, offset, &value->path_tolerance.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->component_path_tolerance.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->component_path_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_path_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_read_fields(p, n, offset, &value->component_path_tolerance.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->goal_tolerance.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->goal_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->goal_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_read_fields(p, n, offset, &value->goal_tolerance.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->component_goal_tolerance.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->component_goal_tolerance.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_goal_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_read_fields(p, n, offset, &value->component_goal_tolerance.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->goal_time_tolerance))
        return 0;
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 64u || length > 20920u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for control_msgs/action/FollowJointTrajectory_Result.error_string; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[4096];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_error_string_text;

/** @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result
{
    /** @brief Declared field error_code; canonical capacity is part of CODEC_IDENTITY. */
    int32_t error_code;
    /** @brief Declared field error_string; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_error_string_text error_string;
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result;

#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_MAX_WIRE_BYTES 4104u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_CODEC_IDENTITY                                                                     \
    "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
/** @brief Original scalar constant SUCCESSFUL=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_SUCCESSFUL INT32_C(0)
/** @brief Original scalar constant INVALID_GOAL=-1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_INVALID_GOAL -INT32_C(1)
/** @brief Original scalar constant INVALID_JOINTS=-2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_INVALID_JOINTS -INT32_C(2)
/** @brief Original scalar constant OLD_HEADER_TIMESTAMP=-3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_OLD_HEADER_TIMESTAMP -INT32_C(3)
/** @brief Original scalar constant PATH_TOLERANCE_VIOLATED=-4; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_PATH_TOLERANCE_VIOLATED -INT32_C(4)
/** @brief Original scalar constant GOAL_TOLERANCE_VIOLATED=-5; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_GOAL_TOLERANCE_VIOLATED -INT32_C(5)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value)
{
    if(!value)
        return 0;
    if(value->error_string.size > 4096u || !uwvm_bounded_utf8(value->error_string.data, value->error_string.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_wire_size(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4 + value->error_string.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_write_fields(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
    unsigned char* p,
    size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->error_code, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error_string.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error_string.data, value->error_string.size);
    *offset += value->error_string.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->error_code, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error_string.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error_string.size > 4096u || value->error_string.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error_string.data, p + *offset, value->error_string.size);
    *offset += value->error_string.size;
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 4104u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for control_msgs/action/FollowJointTrajectory_Feedback.joint_names; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_joint_names_text;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_joint_names_text data[12];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_joint_names_sequence;

/** @brief UTF-8 byte storage for control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names; size
 * excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[512];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_multi_dof_joint_names_text;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_multi_dof_joint_names_text data[2];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_multi_dof_joint_names_sequence;

/** @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Feedback value; no field projects away native data.
 */
typedef struct roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_joint_names_sequence joint_names;
    /** @brief Declared field desired; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint desired;
    /** @brief Declared field actual; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint actual;
    /** @brief Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint error;
    /** @brief Declared field multi_dof_joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_multi_dof_joint_names_sequence multi_dof_joint_names;
    /** @brief Declared field multi_dof_desired; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint multi_dof_desired;
    /** @brief Declared field multi_dof_actual; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint multi_dof_actual;
    /** @brief Declared field multi_dof_error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint multi_dof_error;
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback;

#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_MAX_WIRE_BYTES 4128u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_MIN_WIRE_BYTES 152u
#define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_CODEC_IDENTITY                                                                   \
    "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_default(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_default(&next.multi_dof_desired);
    (void)roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_default(&next.multi_dof_actual);
    (void)roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_default(&next.multi_dof_error);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback field
 * graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 64u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value->desired))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value->actual))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value->error))
        return 0;
    if(value->multi_dof_joint_names.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->multi_dof_joint_names.size; ++i)
        {
            if(value->multi_dof_joint_names.data[i].size > 512u ||
               !uwvm_bounded_utf8(value->multi_dof_joint_names.data[i].data, value->multi_dof_joint_names.data[i].size))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(&value->multi_dof_desired))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(&value->multi_dof_actual))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(&value->multi_dof_error))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_wire_size(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->desired);
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->actual);
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->error);
    n += 4;
    if(value->multi_dof_joint_names.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->multi_dof_joint_names.size; ++i)
        {
            n += 4 + value->multi_dof_joint_names.data[i].size;
        }
    }
    n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(&value->multi_dof_desired);
    n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(&value->multi_dof_actual);
    n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(&value->multi_dof_error);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_write_fields(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
    unsigned char* p,
    size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->joint_names.data[i].data, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(&value->desired, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(&value->actual, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(&value->error, p, offset);
    uwvm_bounded_put(p + *offset, value->multi_dof_joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->multi_dof_joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->multi_dof_joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->multi_dof_joint_names.data[i].data, value->multi_dof_joint_names.data[i].size);
            *offset += value->multi_dof_joint_names.data[i].size;
        }
    }
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(&value->multi_dof_desired, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(&value->multi_dof_actual, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(&value->multi_dof_error, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 64u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->desired))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->actual))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->error))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->multi_dof_joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->multi_dof_joint_names.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->multi_dof_joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->multi_dof_joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->multi_dof_joint_names.data[i].size > 512u || value->multi_dof_joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->multi_dof_joint_names.data[i].data, p + *offset, value->multi_dof_joint_names.data[i].size);
            *offset += value->multi_dof_joint_names.data[i].size;
        }
    }
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(p, n, offset, &value->multi_dof_desired))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(p, n, offset, &value->multi_dof_actual))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(p, n, offset, &value->multi_dof_error))
        return 0;
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 152u || length > 4128u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 kuka_driver_interfaces/msg/FRIState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState
{
    /** @brief Declared field session_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t session_state;
    /** @brief Declared field connection_quality; canonical capacity is part of CODEC_IDENTITY. */
    int32_t connection_quality;
    /** @brief Declared field safety_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t safety_state;
    /** @brief Declared field command_mode; canonical capacity is part of CODEC_IDENTITY. */
    int32_t command_mode;
    /** @brief Declared field control_mode; canonical capacity is part of CODEC_IDENTITY. */
    int32_t control_mode;
    /** @brief Declared field operation_mode; canonical capacity is part of CODEC_IDENTITY. */
    int32_t operation_mode;
    /** @brief Declared field drive_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t drive_state;
    /** @brief Declared field overlay_type; canonical capacity is part of CODEC_IDENTITY. */
    int32_t overlay_type;
    /** @brief Declared field tracking_performance; canonical capacity is part of CODEC_IDENTITY. */
    double tracking_performance;
} roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState;

#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRISTATE_MAX_WIRE_BYTES 40u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRISTATE_MIN_WIRE_BYTES 40u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRISTATE_CODEC_IDENTITY "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_valid(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->tracking_performance, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_wire_size(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_write_fields(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->session_state, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->connection_quality, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->safety_state, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->command_mode, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->control_mode, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->operation_mode, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->drive_state, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->overlay_type, 4);
    *offset += 4;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->tracking_performance, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->session_state, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->connection_quality, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->safety_state, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->command_mode, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->control_mode, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->operation_mode, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->drive_state, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->overlay_type, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->tracking_performance, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState* value)
{
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for kuka_driver_interfaces/msg/FRIStateArray.robot_names; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_robot_names_text;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_robot_names_text data[16];
} roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_robot_names_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState data[16];
} roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_states_sequence;

/** @brief Complete ROS2 kuka_driver_interfaces/msg/FRIStateArray value; no field projects away native data. */
typedef struct roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray
{
    /** @brief Declared field robot_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_robot_names_sequence robot_names;
    /** @brief Declared field states; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_states_sequence states;
} roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray;

#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRISTATEARRAY_MAX_WIRE_BYTES 1736u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRISTATEARRAY_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRISTATEARRAY_CODEC_IDENTITY "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_valid(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray const* value)
{
    if(!value)
        return 0;
    if(value->robot_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->robot_names.size; ++i)
        {
            if(value->robot_names.data[i].size > 64u || !uwvm_bounded_utf8(value->robot_names.data[i].data, value->robot_names.data[i].size))
                return 0;
        }
    }
    if(value->states.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_valid(&value->states.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_wire_size(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    if(value->robot_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->robot_names.size; ++i)
        {
            n += 4 + value->robot_names.data[i].size;
        }
    }
    n += 4;
    if(value->states.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            n += roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_wire_size(&value->states.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_write_fields(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->robot_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->robot_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->robot_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->robot_names.data[i].data, value->robot_names.data[i].size);
            *offset += value->robot_names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->states.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_write_fields(&value->states.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->robot_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->robot_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->robot_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->robot_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->robot_names.data[i].size > 64u || value->robot_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->robot_names.data[i].data, p + *offset, value->robot_names.data[i].size);
            *offset += value->robot_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->states.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->states.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_read_fields(p, n, offset, &value->states.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray* value)
{
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 1736u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 kuka_driver_interfaces/msg/FriConfiguration value; no field projects away native data. */
typedef struct roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration
{
    /** @brief Declared field receive_multiplier; canonical capacity is part of CODEC_IDENTITY. */
    int32_t receive_multiplier;
    /** @brief Declared field send_period_ms; canonical capacity is part of CODEC_IDENTITY. */
    int32_t send_period_ms;
} roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration;

#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRICONFIGURATION_MAX_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRICONFIGURATION_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_FRICONFIGURATION_CODEC_IDENTITY                                                                          \
    "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_valid(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_wire_size(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_write_fields(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->receive_multiplier, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->send_period_ms, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->receive_multiplier, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->send_period_ms, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration* value)
{
    roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for kuka_driver_interfaces/msg/HardwareEvent.robot_name; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[512];
} roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_robot_name_text;

/** @brief Complete ROS2 kuka_driver_interfaces/msg/HardwareEvent value; no field projects away native data. */
typedef struct roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent
{
    /** @brief Declared field robot_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_robot_name_text robot_name;
    /** @brief Declared field event; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t event;
} roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent;

#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_HARDWAREEVENT_MAX_WIRE_BYTES 517u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_HARDWAREEVENT_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_HARDWAREEVENT_CODEC_IDENTITY "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_valid(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent const* value)
{
    if(!value)
        return 0;
    if(value->robot_name.size > 512u || !uwvm_bounded_utf8(value->robot_name.data, value->robot_name.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_wire_size(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent const* value)
{
    (void)value;
    size_t n = 0;
    n += 4 + value->robot_name.size;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_write_fields(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->robot_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->robot_name.data, value->robot_name.size);
    *offset += value->robot_name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->event, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->robot_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->robot_name.size > 512u || value->robot_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->robot_name.data, p + *offset, value->robot_name.size);
    *offset += value->robot_name.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->event, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent* value)
{
    roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 517u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 kuka_driver_interfaces/msg/KssStatus value; no field projects away native data. */
typedef struct roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus
{
    /** @brief Declared field control_mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t control_mode;
    /** @brief Declared field cycle_time; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t cycle_time;
    /** @brief Declared field drives_powered; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t drives_powered;
    /** @brief Declared field emergency_stop; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t emergency_stop;
    /** @brief Declared field guard_stop; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t guard_stop;
    /** @brief Declared field in_motion; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t in_motion;
    /** @brief Declared field motion_possible; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t motion_possible;
    /** @brief Declared field operation_mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t operation_mode;
    /** @brief Declared field robot_stopped; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t robot_stopped;
} roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus;

#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_MAX_WIRE_BYTES 9u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_MIN_WIRE_BYTES 9u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_CODEC_IDENTITY "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82"
/** @brief Original scalar constant UNSPECIFIED=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_UNSPECIFIED UINT32_C(0)
/** @brief Original scalar constant JOINT_POSITION_CONTROL=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_JOINT_POSITION_CONTROL UINT32_C(1)
/** @brief Original scalar constant CARTESIAN_POSITION_CONTROL=5; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_CARTESIAN_POSITION_CONTROL UINT32_C(5)
/** @brief Original scalar constant RSI_4MS=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_RSI_4MS UINT32_C(1)
/** @brief Original scalar constant RSI_12MS=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_RSI_12MS UINT32_C(2)
/** @brief Original scalar constant T1=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_T1 UINT32_C(1)
/** @brief Original scalar constant T2=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_T2 UINT32_C(2)
/** @brief Original scalar constant AUT=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_AUT UINT32_C(3)
/** @brief Original scalar constant EXT=4; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUS_EXT UINT32_C(4)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_valid(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus const* value)
{
    if(!value)
        return 0;
    if(value->drives_powered > 1)
        return 0;
    if(value->emergency_stop > 1)
        return 0;
    if(value->guard_stop > 1)
        return 0;
    if(value->in_motion > 1)
        return 0;
    if(value->motion_possible > 1)
        return 0;
    if(value->robot_stopped > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_wire_size(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus const* value)
{
    (void)value;
    size_t n = 0;
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
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_write_fields(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->control_mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cycle_time, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->drives_powered, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->emergency_stop, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->guard_stop, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->in_motion, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->motion_possible, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->operation_mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->robot_stopped, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->control_mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cycle_time, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->drives_powered, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->emergency_stop, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->guard_stop, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->in_motion, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->motion_possible, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->operation_mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->robot_stopped, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus* value)
{
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 9u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for kuka_driver_interfaces/msg/KssStatusArray.robot_names; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_robot_names_text;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_robot_names_text data[16];
} roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_robot_names_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus data[16];
} roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_statuses_sequence;

/** @brief Complete ROS2 kuka_driver_interfaces/msg/KssStatusArray value; no field projects away native data. */
typedef struct roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray
{
    /** @brief Declared field robot_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_robot_names_sequence robot_names;
    /** @brief Declared field statuses; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_statuses_sequence statuses;
} roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray;

#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUSARRAY_MAX_WIRE_BYTES 1240u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUSARRAY_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_KUKA_DRIVER_INTERFACES_MSG_KSSSTATUSARRAY_CODEC_IDENTITY "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_valid(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray const* value)
{
    if(!value)
        return 0;
    if(value->robot_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->robot_names.size; ++i)
        {
            if(value->robot_names.data[i].size > 64u || !uwvm_bounded_utf8(value->robot_names.data[i].data, value->robot_names.data[i].size))
                return 0;
        }
    }
    if(value->statuses.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->statuses.size; ++i)
        {
            if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_valid(&value->statuses.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_wire_size(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    if(value->robot_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->robot_names.size; ++i)
        {
            n += 4 + value->robot_names.data[i].size;
        }
    }
    n += 4;
    if(value->statuses.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->statuses.size; ++i)
        {
            n += roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_wire_size(&value->statuses.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_write_fields(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->robot_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->robot_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->robot_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->robot_names.data[i].data, value->robot_names.data[i].size);
            *offset += value->robot_names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->statuses.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->statuses.size; ++i)
        {
            roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_write_fields(&value->statuses.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->robot_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->robot_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->robot_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->robot_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->robot_names.data[i].size > 64u || value->robot_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->robot_names.data[i].data, p + *offset, value->robot_names.data[i].size);
            *offset += value->robot_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->statuses.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->statuses.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->statuses.size; ++i)
        {
            if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_read_fields(p, n, offset, &value->statuses.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray* value)
{
    roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 1240u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for lifecycle_msgs/msg/State.label; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[512];
} roswasmc_bounded_2_lifecycle_msgs_msg_State_label_text;

/** @brief Complete ROS2 lifecycle_msgs/msg/State value; no field projects away native data. */
typedef struct roswasmc_bounded_2_lifecycle_msgs_msg_State
{
    /** @brief Declared field id; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t id;
    /** @brief Declared field label; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_lifecycle_msgs_msg_State_label_text label;
} roswasmc_bounded_2_lifecycle_msgs_msg_State;

#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_MAX_WIRE_BYTES 517u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_CODEC_IDENTITY "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94"
/** @brief Original scalar constant PRIMARY_STATE_UNKNOWN=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_PRIMARY_STATE_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant PRIMARY_STATE_UNCONFIGURED=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_PRIMARY_STATE_UNCONFIGURED UINT32_C(1)
/** @brief Original scalar constant PRIMARY_STATE_INACTIVE=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_PRIMARY_STATE_INACTIVE UINT32_C(2)
/** @brief Original scalar constant PRIMARY_STATE_ACTIVE=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_PRIMARY_STATE_ACTIVE UINT32_C(3)
/** @brief Original scalar constant PRIMARY_STATE_FINALIZED=4; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_PRIMARY_STATE_FINALIZED UINT32_C(4)
/** @brief Original scalar constant TRANSITION_STATE_CONFIGURING=10; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_TRANSITION_STATE_CONFIGURING UINT32_C(10)
/** @brief Original scalar constant TRANSITION_STATE_CLEANINGUP=11; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_TRANSITION_STATE_CLEANINGUP UINT32_C(11)
/** @brief Original scalar constant TRANSITION_STATE_SHUTTINGDOWN=12; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_TRANSITION_STATE_SHUTTINGDOWN UINT32_C(12)
/** @brief Original scalar constant TRANSITION_STATE_ACTIVATING=13; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_TRANSITION_STATE_ACTIVATING UINT32_C(13)
/** @brief Original scalar constant TRANSITION_STATE_DEACTIVATING=14; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_TRANSITION_STATE_DEACTIVATING UINT32_C(14)
/** @brief Original scalar constant TRANSITION_STATE_ERRORPROCESSING=15; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_STATE_TRANSITION_STATE_ERRORPROCESSING UINT32_C(15)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_lifecycle_msgs_msg_State field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_msg_State_valid(roswasmc_bounded_2_lifecycle_msgs_msg_State const* value)
{
    if(!value)
        return 0;
    if(value->label.size > 512u || !uwvm_bounded_utf8(value->label.data, value->label.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_lifecycle_msgs_msg_State.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_lifecycle_msgs_msg_State_wire_size(roswasmc_bounded_2_lifecycle_msgs_msg_State const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4 + value->label.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_msg_State with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_lifecycle_msgs_msg_State_write_fields(roswasmc_bounded_2_lifecycle_msgs_msg_State const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->id, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->label.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->label.data, value->label.size);
    *offset += value->label.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_msg_State with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_msg_State_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_lifecycle_msgs_msg_State* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->id, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->label.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->label.size > 512u || value->label.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->label.data, p + *offset, value->label.size);
    *offset += value->label.size;
    return roswasmc_bounded_2_lifecycle_msgs_msg_State_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_lifecycle_msgs_msg_State transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_lifecycle_msgs_msg_State_encode(roswasmc_bounded_2_lifecycle_msgs_msg_State const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_lifecycle_msgs_msg_State_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_lifecycle_msgs_msg_State_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_lifecycle_msgs_msg_State_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_lifecycle_msgs_msg_State value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_msg_State_decode(void const* input, size_t length, roswasmc_bounded_2_lifecycle_msgs_msg_State* value)
{
    roswasmc_bounded_2_lifecycle_msgs_msg_State next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 517u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_lifecycle_msgs_msg_State_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for lifecycle_msgs/msg/Transition.label; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[512];
} roswasmc_bounded_2_lifecycle_msgs_msg_Transition_label_text;

/** @brief Complete ROS2 lifecycle_msgs/msg/Transition value; no field projects away native data. */
typedef struct roswasmc_bounded_2_lifecycle_msgs_msg_Transition
{
    /** @brief Declared field id; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t id;
    /** @brief Declared field label; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_lifecycle_msgs_msg_Transition_label_text label;
} roswasmc_bounded_2_lifecycle_msgs_msg_Transition;

#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_MAX_WIRE_BYTES 517u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_CODEC_IDENTITY "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb"
/** @brief Original scalar constant TRANSITION_CREATE=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_CREATE UINT32_C(0)
/** @brief Original scalar constant TRANSITION_CONFIGURE=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_CONFIGURE UINT32_C(1)
/** @brief Original scalar constant TRANSITION_CLEANUP=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_CLEANUP UINT32_C(2)
/** @brief Original scalar constant TRANSITION_ACTIVATE=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ACTIVATE UINT32_C(3)
/** @brief Original scalar constant TRANSITION_DEACTIVATE=4; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_DEACTIVATE UINT32_C(4)
/** @brief Original scalar constant TRANSITION_UNCONFIGURED_SHUTDOWN=5; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_UNCONFIGURED_SHUTDOWN UINT32_C(5)
/** @brief Original scalar constant TRANSITION_INACTIVE_SHUTDOWN=6; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_INACTIVE_SHUTDOWN UINT32_C(6)
/** @brief Original scalar constant TRANSITION_ACTIVE_SHUTDOWN=7; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ACTIVE_SHUTDOWN UINT32_C(7)
/** @brief Original scalar constant TRANSITION_DESTROY=8; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_DESTROY UINT32_C(8)
/** @brief Original scalar constant TRANSITION_ON_CONFIGURE_SUCCESS=10; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_CONFIGURE_SUCCESS UINT32_C(10)
/** @brief Original scalar constant TRANSITION_ON_CONFIGURE_FAILURE=11; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_CONFIGURE_FAILURE UINT32_C(11)
/** @brief Original scalar constant TRANSITION_ON_CONFIGURE_ERROR=12; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_CONFIGURE_ERROR UINT32_C(12)
/** @brief Original scalar constant TRANSITION_ON_CLEANUP_SUCCESS=20; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_CLEANUP_SUCCESS UINT32_C(20)
/** @brief Original scalar constant TRANSITION_ON_CLEANUP_FAILURE=21; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_CLEANUP_FAILURE UINT32_C(21)
/** @brief Original scalar constant TRANSITION_ON_CLEANUP_ERROR=22; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_CLEANUP_ERROR UINT32_C(22)
/** @brief Original scalar constant TRANSITION_ON_ACTIVATE_SUCCESS=30; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_ACTIVATE_SUCCESS UINT32_C(30)
/** @brief Original scalar constant TRANSITION_ON_ACTIVATE_FAILURE=31; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_ACTIVATE_FAILURE UINT32_C(31)
/** @brief Original scalar constant TRANSITION_ON_ACTIVATE_ERROR=32; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_ACTIVATE_ERROR UINT32_C(32)
/** @brief Original scalar constant TRANSITION_ON_DEACTIVATE_SUCCESS=40; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_DEACTIVATE_SUCCESS UINT32_C(40)
/** @brief Original scalar constant TRANSITION_ON_DEACTIVATE_FAILURE=41; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_DEACTIVATE_FAILURE UINT32_C(41)
/** @brief Original scalar constant TRANSITION_ON_DEACTIVATE_ERROR=42; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_DEACTIVATE_ERROR UINT32_C(42)
/** @brief Original scalar constant TRANSITION_ON_SHUTDOWN_SUCCESS=50; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_SHUTDOWN_SUCCESS UINT32_C(50)
/** @brief Original scalar constant TRANSITION_ON_SHUTDOWN_FAILURE=51; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_SHUTDOWN_FAILURE UINT32_C(51)
/** @brief Original scalar constant TRANSITION_ON_SHUTDOWN_ERROR=52; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_SHUTDOWN_ERROR UINT32_C(52)
/** @brief Original scalar constant TRANSITION_ON_ERROR_SUCCESS=60; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_ERROR_SUCCESS UINT32_C(60)
/** @brief Original scalar constant TRANSITION_ON_ERROR_FAILURE=61; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_ERROR_FAILURE UINT32_C(61)
/** @brief Original scalar constant TRANSITION_ON_ERROR_ERROR=62; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_ON_ERROR_ERROR UINT32_C(62)
/** @brief Original scalar constant TRANSITION_CALLBACK_SUCCESS=97; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_CALLBACK_SUCCESS UINT32_C(97)
/** @brief Original scalar constant TRANSITION_CALLBACK_FAILURE=98; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_CALLBACK_FAILURE UINT32_C(98)
/** @brief Original scalar constant TRANSITION_CALLBACK_ERROR=99; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_MSG_TRANSITION_TRANSITION_CALLBACK_ERROR UINT32_C(99)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_lifecycle_msgs_msg_Transition field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_msg_Transition_valid(roswasmc_bounded_2_lifecycle_msgs_msg_Transition const* value)
{
    if(!value)
        return 0;
    if(value->label.size > 512u || !uwvm_bounded_utf8(value->label.data, value->label.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_lifecycle_msgs_msg_Transition.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_lifecycle_msgs_msg_Transition_wire_size(roswasmc_bounded_2_lifecycle_msgs_msg_Transition const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4 + value->label.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_msg_Transition with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_lifecycle_msgs_msg_Transition_write_fields(roswasmc_bounded_2_lifecycle_msgs_msg_Transition const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->id, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->label.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->label.data, value->label.size);
    *offset += value->label.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_msg_Transition with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_msg_Transition_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_lifecycle_msgs_msg_Transition* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->id, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->label.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->label.size > 512u || value->label.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->label.data, p + *offset, value->label.size);
    *offset += value->label.size;
    return roswasmc_bounded_2_lifecycle_msgs_msg_Transition_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_lifecycle_msgs_msg_Transition transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_msg_Transition_encode(roswasmc_bounded_2_lifecycle_msgs_msg_Transition const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_lifecycle_msgs_msg_Transition_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_lifecycle_msgs_msg_Transition_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_lifecycle_msgs_msg_Transition_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_lifecycle_msgs_msg_Transition value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_lifecycle_msgs_msg_Transition_decode(void const* input, size_t length, roswasmc_bounded_2_lifecycle_msgs_msg_Transition* value)
{
    roswasmc_bounded_2_lifecycle_msgs_msg_Transition next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 517u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_lifecycle_msgs_msg_Transition_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 lifecycle_msgs/srv/ChangeState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request
{
    /** @brief Declared field transition; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_lifecycle_msgs_msg_Transition transition;
} roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request;

#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_CHANGESTATE_REQUEST_MAX_WIRE_BYTES 517u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_CHANGESTATE_REQUEST_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_CHANGESTATE_REQUEST_CODEC_IDENTITY "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_valid(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_lifecycle_msgs_msg_Transition_valid(&value->transition))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_wire_size(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_lifecycle_msgs_msg_Transition_wire_size(&value->transition);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_write_fields(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_lifecycle_msgs_msg_Transition_write_fields(&value->transition, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_lifecycle_msgs_msg_Transition_read_fields(p, n, offset, &value->transition))
        return 0;
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_encode(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request* value)
{
    roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 517u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 lifecycle_msgs/srv/ChangeState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
} roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response;

#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_CHANGESTATE_RESPONSE_MAX_WIRE_BYTES 1u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_CHANGESTATE_RESPONSE_MIN_WIRE_BYTES 1u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_CHANGESTATE_RESPONSE_CODEC_IDENTITY "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_valid(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_wire_size(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_write_fields(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_encode(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response* value)
{
    roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 lifecycle_msgs/srv/GetState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request;

#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_GETSTATE_REQUEST_MAX_WIRE_BYTES 0u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_GETSTATE_REQUEST_MIN_WIRE_BYTES 0u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_GETSTATE_REQUEST_CODEC_IDENTITY "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_valid(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_wire_size(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const* value)
{
    (void)value;
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_write_fields(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_encode(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request* value)
{
    roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 lifecycle_msgs/srv/GetState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response
{
    /** @brief Declared field current_state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_lifecycle_msgs_msg_State current_state;
} roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response;

#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_GETSTATE_RESPONSE_MAX_WIRE_BYTES 517u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_GETSTATE_RESPONSE_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_LIFECYCLE_MSGS_SRV_GETSTATE_RESPONSE_CODEC_IDENTITY "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_valid(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_lifecycle_msgs_msg_State_valid(&value->current_state))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_wire_size(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_lifecycle_msgs_msg_State_wire_size(&value->current_state);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_write_fields(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_lifecycle_msgs_msg_State_write_fields(&value->current_state, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_lifecycle_msgs_msg_State_read_fields(p, n, offset, &value->current_state))
        return 0;
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_encode(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response* value)
{
    roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 517u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for sensor_msgs/msg/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text data[12];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence;

/** @brief At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_effort_sequence;

/** @brief Complete ROS2 sensor_msgs/msg/JointState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_sensor_msgs_msg_JointState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence name;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence position;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence velocity;
    /** @brief Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_effort_sequence effort;
} roswasmc_bounded_2_sensor_msgs_msg_JointState;

#define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 1196u
#define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 28u
#define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_sensor_msgs_msg_JointState field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->name.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 64u || !uwvm_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
                return 0;
        }
    }
    if(value->position.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->position.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->velocity.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocity.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->effort.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if((value->name.size != 0 && value->position.size != 0 && value->name.size != value->position.size) ||
       (value->name.size != 0 && value->velocity.size != 0 && value->name.size != value->velocity.size) ||
       (value->name.size != 0 && value->effort.size != 0 && value->name.size != value->effort.size) ||
       (value->position.size != 0 && value->velocity.size != 0 && value->position.size != value->velocity.size) ||
       (value->position.size != 0 && value->effort.size != 0 && value->position.size != value->effort.size) ||
       (value->velocity.size != 0 && value->effort.size != 0 && value->velocity.size != value->effort.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_sensor_msgs_msg_JointState.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->name.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 4 + value->name.data[i].size;
        }
    }
    n += 4;
    if(value->position.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocity.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_sensor_msgs_msg_JointState with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->name.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->name.data[i].data, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->position.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->position.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->velocity.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocity.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->effort.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_sensor_msgs_msg_JointState with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->name.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->name.data[i].size > 64u || value->name.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->name.data[i].data, p + *offset, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->position.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->position.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->position.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocity.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocity.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->velocity.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->effort.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->effort.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->effort.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_sensor_msgs_msg_JointState transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_sensor_msgs_msg_JointState value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_JointState next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 1196u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 std_srvs/srv/Trigger_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_srvs_srv_Trigger_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_std_srvs_srv_Trigger_Request;

#define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_MAX_WIRE_BYTES 0u
#define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_MIN_WIRE_BYTES 0u
#define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_CODEC_IDENTITY "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_std_srvs_srv_Trigger_Request field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_std_srvs_srv_Trigger_Request_valid(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_std_srvs_srv_Trigger_Request.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_std_srvs_srv_Trigger_Request_wire_size(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value)
{
    (void)value;
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_std_srvs_srv_Trigger_Request with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request_write_fields(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_std_srvs_srv_Trigger_Request with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_std_srvs_srv_Trigger_Request_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_std_srvs_srv_Trigger_Request* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_std_srvs_srv_Trigger_Request transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_std_srvs_srv_Trigger_Request_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_srvs_srv_Trigger_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_srvs_srv_Trigger_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_std_srvs_srv_Trigger_Request value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Request* value)
{
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_srvs_srv_Trigger_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for std_srvs/srv/Trigger_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[512];
} roswasmc_bounded_2_std_srvs_srv_Trigger_Response_message_text;

/** @brief Complete ROS2 std_srvs/srv/Trigger_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_srvs_srv_Trigger_Response
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response_message_text message;
} roswasmc_bounded_2_std_srvs_srv_Trigger_Response;

#define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_MAX_WIRE_BYTES 517u
#define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_CODEC_IDENTITY "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_std_srvs_srv_Trigger_Response field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_std_srvs_srv_Trigger_Response_valid(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    if(value->message.size > 512u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_std_srvs_srv_Trigger_Response.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_std_srvs_srv_Trigger_Response_wire_size(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_std_srvs_srv_Trigger_Response with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_std_srvs_srv_Trigger_Response_write_fields(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_std_srvs_srv_Trigger_Response with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_std_srvs_srv_Trigger_Response_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_std_srvs_srv_Trigger_Response* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 512u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_std_srvs_srv_Trigger_Response transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_std_srvs_srv_Trigger_Response_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_srvs_srv_Trigger_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_srvs_srv_Trigger_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_std_srvs_srv_Trigger_Response value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Response* value)
{
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 517u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_srvs_srv_Trigger_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

#undef UWVM_BOUNDED_ASSERT
#endif
