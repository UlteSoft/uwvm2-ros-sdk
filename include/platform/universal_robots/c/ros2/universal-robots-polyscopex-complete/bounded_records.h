/**
 * @file bounded_records.h
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
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

/** @brief Complete ROS2 geometry_msgs/msg/Point value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Point
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
} roswasmc_bounded_2_geometry_msgs_msg_Point;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_MAX_WIRE_BYTES 24u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_MIN_WIRE_BYTES 24u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_CODEC_IDENTITY "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_geometry_msgs_msg_Point field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Point_valid(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
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
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_geometry_msgs_msg_Point.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
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
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Point with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, unsigned char* p, size_t* offset)
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
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Point with an exclusive checked cursor.
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
    roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
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
    return roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_geometry_msgs_msg_Point transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Point_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_geometry_msgs_msg_Point value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Point_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Point next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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

/** @brief Complete ROS2 geometry_msgs/msg/Pose value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Pose
{
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Point position;
    /** @brief Declared field orientation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion orientation;
} roswasmc_bounded_2_geometry_msgs_msg_Pose;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_MAX_WIRE_BYTES 56u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_MIN_WIRE_BYTES 56u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_CODEC_IDENTITY "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_default(roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&next.orientation);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_geometry_msgs_msg_Pose field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->position))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value->orientation))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_geometry_msgs_msg_Pose.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value->position);
    n += roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value->orientation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Pose with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(&value->position, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(&value->orientation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_geometry_msgs_msg_Pose with an exclusive checked cursor.
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
    roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->position))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(p, n, offset, &value->orientation))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_geometry_msgs_msg_Pose transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_geometry_msgs_msg_Pose value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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

/** @brief UTF-8 byte storage for std_msgs/msg/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text;

/** @brief Complete ROS2 std_msgs/msg/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_msgs_msg_Header
{
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text frame_id;
} roswasmc_bounded_2_std_msgs_msg_Header;

#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 140u
#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"

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
    if(value->frame_id.size > 128u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
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
    if(value->frame_id.size > 128u || value->frame_id.size > n - *offset)
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
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for std_msgs/msg/String.data; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[1024];
} roswasmc_bounded_2_std_msgs_msg_String_data_text;

/** @brief Complete ROS2 std_msgs/msg/String value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_msgs_msg_String
{
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_String_data_text data;
} roswasmc_bounded_2_std_msgs_msg_String;

#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_STRING_MAX_WIRE_BYTES 1028u
#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_STRING_MIN_WIRE_BYTES 4u
#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_STRING_CODEC_IDENTITY "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_std_msgs_msg_String field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_std_msgs_msg_String_valid(roswasmc_bounded_2_std_msgs_msg_String const* value)
{
    if(!value)
        return 0;
    if(value->data.size > 1024u || !uwvm_bounded_utf8(value->data.data, value->data.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_std_msgs_msg_String.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_std_msgs_msg_String_wire_size(roswasmc_bounded_2_std_msgs_msg_String const* value)
{
    (void)value;
    size_t n = 0;
    n += 4 + value->data.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_std_msgs_msg_String with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_std_msgs_msg_String_write_fields(roswasmc_bounded_2_std_msgs_msg_String const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->data.data, value->data.size);
    *offset += value->data.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_std_msgs_msg_String with an exclusive checked cursor.
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
    roswasmc_bounded_2_std_msgs_msg_String_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_std_msgs_msg_String* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 1024u || value->data.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->data.data, p + *offset, value->data.size);
    *offset += value->data.size;
    return roswasmc_bounded_2_std_msgs_msg_String_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_std_msgs_msg_String transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_std_msgs_msg_String_encode(roswasmc_bounded_2_std_msgs_msg_String const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_msgs_msg_String_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_msgs_msg_String_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_msgs_msg_String_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_std_msgs_msg_String value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_String_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_String* value)
{
    roswasmc_bounded_2_std_msgs_msg_String next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 1028u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_String_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/RobotMode value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_RobotMode
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    int8_t data;
} roswasmc_bounded_2_urinterfaces_msg_RobotMode;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_MAX_WIRE_BYTES 141u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_MIN_WIRE_BYTES 13u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_CODEC_IDENTITY "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea"
/** @brief Original scalar constant DISCONNECTED=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_DISCONNECTED INT32_C(0)
/** @brief Original scalar constant CONFIRM_SAFETY=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_CONFIRM_SAFETY INT32_C(1)
/** @brief Original scalar constant BOOTING=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_BOOTING INT32_C(2)
/** @brief Original scalar constant POWER_OFF=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_POWER_OFF INT32_C(3)
/** @brief Original scalar constant POWER_ON=4; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_POWER_ON INT32_C(4)
/** @brief Original scalar constant IDLE=5; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_IDLE INT32_C(5)
/** @brief Original scalar constant BACKDRIVE=6; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_BACKDRIVE INT32_C(6)
/** @brief Original scalar constant RUNNING=7; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_RUNNING INT32_C(7)
/** @brief Original scalar constant UPDATING_FIRMWARE=8; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ROBOTMODE_UPDATING_FIRMWARE INT32_C(8)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_RobotMode field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_RobotMode_valid(roswasmc_bounded_2_urinterfaces_msg_RobotMode const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_RobotMode.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_RobotMode_wire_size(roswasmc_bounded_2_urinterfaces_msg_RobotMode const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_RobotMode with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_RobotMode_write_fields(roswasmc_bounded_2_urinterfaces_msg_RobotMode const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_RobotMode with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_RobotMode_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_urinterfaces_msg_RobotMode* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->data, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_urinterfaces_msg_RobotMode_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_RobotMode transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_RobotMode_encode(roswasmc_bounded_2_urinterfaces_msg_RobotMode const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_RobotMode_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_RobotMode_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_RobotMode_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_RobotMode value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_RobotMode_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_RobotMode* value)
{
    roswasmc_bounded_2_urinterfaces_msg_RobotMode next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 13u || length > 141u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_RobotMode_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/action/SetMode_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_action_SetMode_Goal
{
    /** @brief Declared field target_robot_mode; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_RobotMode target_robot_mode;
    /** @brief Declared field stop_program; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t stop_program;
    /** @brief Declared field play_program; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t play_program;
} roswasmc_bounded_2_urinterfaces_action_SetMode_Goal;

#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_GOAL_MAX_WIRE_BYTES 143u
#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_GOAL_MIN_WIRE_BYTES 15u
#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_GOAL_CODEC_IDENTITY "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_default(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal* value)
{
    roswasmc_bounded_2_urinterfaces_action_SetMode_Goal next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    next.play_program = 0;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_action_SetMode_Goal field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_valid(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_RobotMode_valid(&value->target_robot_mode))
        return 0;
    if(value->stop_program > 1)
        return 0;
    if(value->play_program > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_action_SetMode_Goal.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_wire_size(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_urinterfaces_msg_RobotMode_wire_size(&value->target_robot_mode);
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_action_SetMode_Goal with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_write_fields(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_urinterfaces_msg_RobotMode_write_fields(&value->target_robot_mode, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->stop_program, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->play_program, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_action_SetMode_Goal with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_urinterfaces_action_SetMode_Goal* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_urinterfaces_msg_RobotMode_read_fields(p, n, offset, &value->target_robot_mode))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->stop_program, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->play_program, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_action_SetMode_Goal transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_encode(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_action_SetMode_Goal value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_action_SetMode_Goal* value)
{
    roswasmc_bounded_2_urinterfaces_action_SetMode_Goal next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 15u || length > 143u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for urinterfaces/action/SetMode_Result.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_urinterfaces_action_SetMode_Result_message_text;

/** @brief Complete ROS2 urinterfaces/action/SetMode_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_action_SetMode_Result
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_action_SetMode_Result_message_text message;
} roswasmc_bounded_2_urinterfaces_action_SetMode_Result;

#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_RESULT_MAX_WIRE_BYTES 261u
#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_RESULT_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_RESULT_CODEC_IDENTITY "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_action_SetMode_Result field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_action_SetMode_Result_valid(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_action_SetMode_Result.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_action_SetMode_Result_wire_size(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_action_SetMode_Result with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_action_SetMode_Result_write_fields(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const* value,
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
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_action_SetMode_Result with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_action_SetMode_Result_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_urinterfaces_action_SetMode_Result* value)
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
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_action_SetMode_Result transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_action_SetMode_Result_encode(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_action_SetMode_Result_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_action_SetMode_Result_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_action_SetMode_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_action_SetMode_Result value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_action_SetMode_Result_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_action_SetMode_Result* value)
{
    roswasmc_bounded_2_urinterfaces_action_SetMode_Result next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_action_SetMode_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/action/SetMode_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback
{
    /** @brief Declared field current_robot_mode; canonical capacity is part of CODEC_IDENTITY. */
    int8_t current_robot_mode;
    /** @brief Declared field current_safety_mode; canonical capacity is part of CODEC_IDENTITY. */
    int8_t current_safety_mode;
} roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback;

#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_FEEDBACK_MAX_WIRE_BYTES 2u
#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_FEEDBACK_MIN_WIRE_BYTES 2u
#define ROSWASMC_BOUNDED_2_URINTERFACES_ACTION_SETMODE_FEEDBACK_CODEC_IDENTITY "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_valid(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_wire_size(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_write_fields(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->current_robot_mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->current_safety_mode, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->current_robot_mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->current_safety_mode, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_encode(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback* value)
{
    roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief UTF-8 byte storage for urinterfaces/msg/ActiveTCP.data; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_data_text;

/** @brief Complete ROS2 urinterfaces/msg/ActiveTCP value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_ActiveTCP
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_data_text data;
} roswasmc_bounded_2_urinterfaces_msg_ActiveTCP;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ACTIVETCP_MAX_WIRE_BYTES 400u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ACTIVETCP_MIN_WIRE_BYTES 16u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ACTIVETCP_CODEC_IDENTITY "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_ActiveTCP field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_valid(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->data.size > 256u || !uwvm_bounded_utf8(value->data.data, value->data.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_ActiveTCP.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_wire_size(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4 + value->data.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_ActiveTCP with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_write_fields(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->data.data, value->data.size);
    *offset += value->data.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_ActiveTCP with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_urinterfaces_msg_ActiveTCP* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 256u || value->data.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->data.data, p + *offset, value->data.size);
    *offset += value->data.size;
    return roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_ActiveTCP transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_encode(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_ActiveTCP value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_ActiveTCP* value)
{
    roswasmc_bounded_2_urinterfaces_msg_ActiveTCP next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 400u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/Analog value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_Analog
{
    /** @brief Declared field pin; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t pin;
    /** @brief Declared field domain; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t domain;
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    float value;
} roswasmc_bounded_2_urinterfaces_msg_Analog;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOG_MAX_WIRE_BYTES 6u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOG_MIN_WIRE_BYTES 6u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOG_CODEC_IDENTITY "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b"
/** @brief Original scalar constant CURRENT=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOG_CURRENT UINT32_C(0)
/** @brief Original scalar constant VOLTAGE=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOG_VOLTAGE UINT32_C(1)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_Analog field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_Analog_valid(roswasmc_bounded_2_urinterfaces_msg_Analog const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->value, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_Analog.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_Analog_wire_size(roswasmc_bounded_2_urinterfaces_msg_Analog const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 1;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Analog with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_Analog_write_fields(roswasmc_bounded_2_urinterfaces_msg_Analog const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pin, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->domain, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->value, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Analog with an exclusive checked cursor.
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
    roswasmc_bounded_2_urinterfaces_msg_Analog_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_urinterfaces_msg_Analog* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pin, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->domain, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_urinterfaces_msg_Analog_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_Analog transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_Analog_encode(roswasmc_bounded_2_urinterfaces_msg_Analog const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_Analog_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_Analog_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_Analog_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_Analog value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_Analog_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_Analog* value)
{
    roswasmc_bounded_2_urinterfaces_msg_Analog next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 6u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_Analog_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_urinterfaces_msg_Analog data[16];
} roswasmc_bounded_2_urinterfaces_msg_AnalogIO_analog_inputs_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_urinterfaces_msg_Analog data[16];
} roswasmc_bounded_2_urinterfaces_msg_AnalogIO_analog_outputs_sequence;

/** @brief Complete ROS2 urinterfaces/msg/AnalogIO value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_AnalogIO
{
    /** @brief Declared field analog_inputs; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_AnalogIO_analog_inputs_sequence analog_inputs;
    /** @brief Declared field analog_outputs; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_AnalogIO_analog_outputs_sequence analog_outputs;
} roswasmc_bounded_2_urinterfaces_msg_AnalogIO;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGIO_MAX_WIRE_BYTES 200u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGIO_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGIO_CODEC_IDENTITY "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_AnalogIO field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_AnalogIO_valid(roswasmc_bounded_2_urinterfaces_msg_AnalogIO const* value)
{
    if(!value)
        return 0;
    if(value->analog_inputs.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->analog_inputs.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Analog_valid(&value->analog_inputs.data[i]))
                return 0;
        }
    }
    if(value->analog_outputs.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->analog_outputs.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Analog_valid(&value->analog_outputs.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_AnalogIO.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_AnalogIO_wire_size(roswasmc_bounded_2_urinterfaces_msg_AnalogIO const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    if(value->analog_inputs.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->analog_inputs.size; ++i)
        {
            n += roswasmc_bounded_2_urinterfaces_msg_Analog_wire_size(&value->analog_inputs.data[i]);
        }
    }
    n += 4;
    if(value->analog_outputs.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->analog_outputs.size; ++i)
        {
            n += roswasmc_bounded_2_urinterfaces_msg_Analog_wire_size(&value->analog_outputs.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_AnalogIO with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_AnalogIO_write_fields(roswasmc_bounded_2_urinterfaces_msg_AnalogIO const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->analog_inputs.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->analog_inputs.size; ++i)
        {
            roswasmc_bounded_2_urinterfaces_msg_Analog_write_fields(&value->analog_inputs.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->analog_outputs.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->analog_outputs.size; ++i)
        {
            roswasmc_bounded_2_urinterfaces_msg_Analog_write_fields(&value->analog_outputs.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_AnalogIO with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_AnalogIO_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_urinterfaces_msg_AnalogIO* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->analog_inputs.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->analog_inputs.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->analog_inputs.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Analog_read_fields(p, n, offset, &value->analog_inputs.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->analog_outputs.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->analog_outputs.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->analog_outputs.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Analog_read_fields(p, n, offset, &value->analog_outputs.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIO_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_AnalogIO transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_AnalogIO_encode(roswasmc_bounded_2_urinterfaces_msg_AnalogIO const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_AnalogIO_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_AnalogIO_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_AnalogIO_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_AnalogIO value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_AnalogIO_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_AnalogIO* value)
{
    roswasmc_bounded_2_urinterfaces_msg_AnalogIO next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 200u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_AnalogIO_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/AnalogIOStateStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field io_state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_AnalogIO io_state;
} roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGIOSTATESTAMPED_MAX_WIRE_BYTES 340u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGIOSTATESTAMPED_MIN_WIRE_BYTES 20u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGIOSTATESTAMPED_CODEC_IDENTITY "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_valid(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_AnalogIO_valid(&value->io_state))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_urinterfaces_msg_AnalogIO_wire_size(&value->io_state);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_urinterfaces_msg_AnalogIO_write_fields(&value->io_state, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_AnalogIO_read_fields(p, n, offset, &value->io_state))
        return 0;
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_encode(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 340u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/AnalogStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_AnalogStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_Analog data;
} roswasmc_bounded_2_urinterfaces_msg_AnalogStamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGSTAMPED_MAX_WIRE_BYTES 146u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGSTAMPED_MIN_WIRE_BYTES 18u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_ANALOGSTAMPED_CODEC_IDENTITY "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_AnalogStamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_valid(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_Analog_valid(&value->data))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_AnalogStamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_urinterfaces_msg_Analog_wire_size(&value->data);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_AnalogStamped with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_urinterfaces_msg_Analog_write_fields(&value->data, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_AnalogStamped with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_urinterfaces_msg_AnalogStamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_Analog_read_fields(p, n, offset, &value->data))
        return 0;
    return roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_AnalogStamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_encode(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_AnalogStamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_AnalogStamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_AnalogStamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 18u || length > 146u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/BoolStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_BoolStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t data;
} roswasmc_bounded_2_urinterfaces_msg_BoolStamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_BOOLSTAMPED_MAX_WIRE_BYTES 141u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_BOOLSTAMPED_MIN_WIRE_BYTES 13u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_BOOLSTAMPED_CODEC_IDENTITY "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_BoolStamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_BoolStamped_valid(roswasmc_bounded_2_urinterfaces_msg_BoolStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->data > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_BoolStamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_BoolStamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_BoolStamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_BoolStamped with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_BoolStamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_BoolStamped const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_BoolStamped with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_BoolStamped_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_urinterfaces_msg_BoolStamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->data, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_urinterfaces_msg_BoolStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_BoolStamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_BoolStamped_encode(roswasmc_bounded_2_urinterfaces_msg_BoolStamped const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_BoolStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_BoolStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_BoolStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_BoolStamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_BoolStamped_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_BoolStamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_BoolStamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 13u || length > 141u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_BoolStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/ControlCycle value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_ControlCycle
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t data;
} roswasmc_bounded_2_urinterfaces_msg_ControlCycle;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_CONTROLCYCLE_MAX_WIRE_BYTES 148u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_CONTROLCYCLE_MIN_WIRE_BYTES 20u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_CONTROLCYCLE_CODEC_IDENTITY "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_ControlCycle field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_ControlCycle_valid(roswasmc_bounded_2_urinterfaces_msg_ControlCycle const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_ControlCycle.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_ControlCycle_wire_size(roswasmc_bounded_2_urinterfaces_msg_ControlCycle const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_ControlCycle with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_ControlCycle_write_fields(roswasmc_bounded_2_urinterfaces_msg_ControlCycle const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 8);
    *offset += 8;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_ControlCycle with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_ControlCycle_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_urinterfaces_msg_ControlCycle* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->data, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_urinterfaces_msg_ControlCycle_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_ControlCycle transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_ControlCycle_encode(roswasmc_bounded_2_urinterfaces_msg_ControlCycle const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_ControlCycle_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_ControlCycle_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_ControlCycle_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_ControlCycle value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_ControlCycle_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_ControlCycle* value)
{
    roswasmc_bounded_2_urinterfaces_msg_ControlCycle next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 148u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_ControlCycle_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/Current value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_Current
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    float data;
} roswasmc_bounded_2_urinterfaces_msg_Current;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_CURRENT_MAX_WIRE_BYTES 144u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_CURRENT_MIN_WIRE_BYTES 16u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_CURRENT_CODEC_IDENTITY "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_Current field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_Current_valid(roswasmc_bounded_2_urinterfaces_msg_Current const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->data, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_Current.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_Current_wire_size(roswasmc_bounded_2_urinterfaces_msg_Current const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Current with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_Current_write_fields(roswasmc_bounded_2_urinterfaces_msg_Current const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->data, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Current with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_Current_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_urinterfaces_msg_Current* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->data, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_urinterfaces_msg_Current_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_Current transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_Current_encode(roswasmc_bounded_2_urinterfaces_msg_Current const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_Current_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_Current_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_Current_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_Current value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_Current_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_Current* value)
{
    roswasmc_bounded_2_urinterfaces_msg_Current next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 144u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_Current_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/Digital value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_Digital
{
    /** @brief Declared field pin; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t pin;
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t state;
} roswasmc_bounded_2_urinterfaces_msg_Digital;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITAL_MAX_WIRE_BYTES 2u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITAL_MIN_WIRE_BYTES 2u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITAL_CODEC_IDENTITY "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_Digital field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_Digital_valid(roswasmc_bounded_2_urinterfaces_msg_Digital const* value)
{
    if(!value)
        return 0;
    if(value->state > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_Digital.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_Digital_wire_size(roswasmc_bounded_2_urinterfaces_msg_Digital const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Digital with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_Digital_write_fields(roswasmc_bounded_2_urinterfaces_msg_Digital const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pin, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Digital with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_Digital_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_urinterfaces_msg_Digital* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pin, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->state, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_urinterfaces_msg_Digital_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_Digital transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_Digital_encode(roswasmc_bounded_2_urinterfaces_msg_Digital const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_Digital_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_Digital_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_Digital_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_Digital value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_Digital_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_Digital* value)
{
    roswasmc_bounded_2_urinterfaces_msg_Digital next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_Digital_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_urinterfaces_msg_Digital data[32];
} roswasmc_bounded_2_urinterfaces_msg_DigitalIO_digital_inputs_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_urinterfaces_msg_Digital data[32];
} roswasmc_bounded_2_urinterfaces_msg_DigitalIO_digital_outputs_sequence;

/** @brief Complete ROS2 urinterfaces/msg/DigitalIO value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_DigitalIO
{
    /** @brief Declared field digital_inputs; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO_digital_inputs_sequence digital_inputs;
    /** @brief Declared field digital_outputs; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO_digital_outputs_sequence digital_outputs;
} roswasmc_bounded_2_urinterfaces_msg_DigitalIO;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALIO_MAX_WIRE_BYTES 136u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALIO_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALIO_CODEC_IDENTITY "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_DigitalIO field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_DigitalIO_valid(roswasmc_bounded_2_urinterfaces_msg_DigitalIO const* value)
{
    if(!value)
        return 0;
    if(value->digital_inputs.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->digital_inputs.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Digital_valid(&value->digital_inputs.data[i]))
                return 0;
        }
    }
    if(value->digital_outputs.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->digital_outputs.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Digital_valid(&value->digital_outputs.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_DigitalIO.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_DigitalIO_wire_size(roswasmc_bounded_2_urinterfaces_msg_DigitalIO const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    if(value->digital_inputs.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->digital_inputs.size; ++i)
        {
            n += roswasmc_bounded_2_urinterfaces_msg_Digital_wire_size(&value->digital_inputs.data[i]);
        }
    }
    n += 4;
    if(value->digital_outputs.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->digital_outputs.size; ++i)
        {
            n += roswasmc_bounded_2_urinterfaces_msg_Digital_wire_size(&value->digital_outputs.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_DigitalIO with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO_write_fields(roswasmc_bounded_2_urinterfaces_msg_DigitalIO const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->digital_inputs.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->digital_inputs.size; ++i)
        {
            roswasmc_bounded_2_urinterfaces_msg_Digital_write_fields(&value->digital_inputs.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->digital_outputs.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->digital_outputs.size; ++i)
        {
            roswasmc_bounded_2_urinterfaces_msg_Digital_write_fields(&value->digital_outputs.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_DigitalIO with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_DigitalIO_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_urinterfaces_msg_DigitalIO* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->digital_inputs.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->digital_inputs.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->digital_inputs.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Digital_read_fields(p, n, offset, &value->digital_inputs.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->digital_outputs.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->digital_outputs.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->digital_outputs.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Digital_read_fields(p, n, offset, &value->digital_outputs.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIO_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_DigitalIO transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_DigitalIO_encode(roswasmc_bounded_2_urinterfaces_msg_DigitalIO const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_DigitalIO_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_DigitalIO_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_DigitalIO value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_DigitalIO* value)
{
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_DigitalIO_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/DigitalIOStateStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field configurable_io; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO configurable_io;
    /** @brief Declared field standard_io; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO standard_io;
} roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALIOSTATESTAMPED_MAX_WIRE_BYTES 412u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALIOSTATESTAMPED_MIN_WIRE_BYTES 28u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALIOSTATESTAMPED_CODEC_IDENTITY "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_valid(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_DigitalIO_valid(&value->configurable_io))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_DigitalIO_valid(&value->standard_io))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_urinterfaces_msg_DigitalIO_wire_size(&value->configurable_io);
    n += roswasmc_bounded_2_urinterfaces_msg_DigitalIO_wire_size(&value->standard_io);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO_write_fields(&value->configurable_io, p, offset);
    roswasmc_bounded_2_urinterfaces_msg_DigitalIO_write_fields(&value->standard_io, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_DigitalIO_read_fields(p, n, offset, &value->configurable_io))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_DigitalIO_read_fields(p, n, offset, &value->standard_io))
        return 0;
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_encode(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 412u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/DigitalStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_DigitalStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_Digital data;
} roswasmc_bounded_2_urinterfaces_msg_DigitalStamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALSTAMPED_MAX_WIRE_BYTES 142u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALSTAMPED_MIN_WIRE_BYTES 14u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DIGITALSTAMPED_CODEC_IDENTITY "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_DigitalStamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_valid(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_Digital_valid(&value->data))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_DigitalStamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_urinterfaces_msg_Digital_wire_size(&value->data);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_DigitalStamped with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_urinterfaces_msg_Digital_write_fields(&value->data, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_DigitalStamped with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_urinterfaces_msg_DigitalStamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_Digital_read_fields(p, n, offset, &value->data))
        return 0;
    return roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_DigitalStamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_encode(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_DigitalStamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_DigitalStamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_DigitalStamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 14u || length > 142u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_data_sequence;

/** @brief Complete ROS2 urinterfaces/msg/DoubleMultiArrayStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_data_sequence data;
} roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DOUBLEMULTIARRAYSTAMPED_MAX_WIRE_BYTES 272u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DOUBLEMULTIARRAYSTAMPED_MIN_WIRE_BYTES 16u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_DOUBLEMULTIARRAYSTAMPED_CODEC_IDENTITY "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_valid(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->data.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->data.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->data.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_encode(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/Float32Stamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_Float32Stamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    float data;
} roswasmc_bounded_2_urinterfaces_msg_Float32Stamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_FLOAT32STAMPED_MAX_WIRE_BYTES 144u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_FLOAT32STAMPED_MIN_WIRE_BYTES 16u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_FLOAT32STAMPED_CODEC_IDENTITY "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_Float32Stamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_valid(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->data, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_Float32Stamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Float32Stamped with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->data, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Float32Stamped with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_urinterfaces_msg_Float32Stamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->data, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_Float32Stamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_encode(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_Float32Stamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_Float32Stamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_Float32Stamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 144u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/Float64Stamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_Float64Stamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    double data;
} roswasmc_bounded_2_urinterfaces_msg_Float64Stamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_FLOAT64STAMPED_MAX_WIRE_BYTES 148u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_FLOAT64STAMPED_MIN_WIRE_BYTES 20u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_FLOAT64STAMPED_CODEC_IDENTITY "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_Float64Stamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_valid(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->data, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_Float64Stamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Float64Stamped with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->data, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_Float64Stamped with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_urinterfaces_msg_Float64Stamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->data, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_Float64Stamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_encode(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_Float64Stamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_Float64Stamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_Float64Stamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 148u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/JointMode value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_JointMode
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field joint_modes; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t joint_modes[6];
    /** @brief Declared field tool_mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t tool_mode;
} roswasmc_bounded_2_urinterfaces_msg_JointMode;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_MAX_WIRE_BYTES 147u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_MIN_WIRE_BYTES 19u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_CODEC_IDENTITY "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c"
/** @brief Original scalar constant JOINT_MODE_RESET=235; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_RESET UINT32_C(235)
/** @brief Original scalar constant JOINT_MODE_SHUTTING_DOWN=236; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_SHUTTING_DOWN UINT32_C(236)
/** @brief Original scalar constant JOINT_MODE_PART_D_CALIBRATION=237; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_PART_D_CALIBRATION UINT32_C(237)
/** @brief Original scalar constant JOINT_MODE_BACKDRIVE=238; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_BACKDRIVE UINT32_C(238)
/** @brief Original scalar constant JOINT_MODE_POWER_OFF=239; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_POWER_OFF UINT32_C(239)
/** @brief Original scalar constant JOINT_MODE_READY_FOR_POWER_OFF=240; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_READY_FOR_POWER_OFF UINT32_C(240)
/** @brief Original scalar constant JOINT_MODE_NOT_RESPONDING=245; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_NOT_RESPONDING UINT32_C(245)
/** @brief Original scalar constant JOINT_MODE_MOTOR_INITIALISATION=246; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_MOTOR_INITIALISATION UINT32_C(246)
/** @brief Original scalar constant JOINT_MODE_BOOTING=247; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_BOOTING UINT32_C(247)
/** @brief Original scalar constant JOINT_MODE_PART_D_CALIBRATION_ERROR=248; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_PART_D_CALIBRATION_ERROR UINT32_C(248)
/** @brief Original scalar constant JOINT_MODE_BOOTLOADER=249; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_BOOTLOADER UINT32_C(249)
/** @brief Original scalar constant JOINT_MODE_CALIBRATION=250; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_CALIBRATION UINT32_C(250)
/** @brief Original scalar constant JOINT_MODE_VIOLATION=251; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_VIOLATION UINT32_C(251)
/** @brief Original scalar constant JOINT_MODE_FAULT=252; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_FAULT UINT32_C(252)
/** @brief Original scalar constant JOINT_MODE_RUNNING=253; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_RUNNING UINT32_C(253)
/** @brief Original scalar constant JOINT_MODE_IDLE=255; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTMODE_JOINT_MODE_IDLE UINT32_C(255)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_JointMode field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_JointMode_valid(roswasmc_bounded_2_urinterfaces_msg_JointMode const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_JointMode.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_JointMode_wire_size(roswasmc_bounded_2_urinterfaces_msg_JointMode const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 1;
        }
    }
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_JointMode with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_JointMode_write_fields(roswasmc_bounded_2_urinterfaces_msg_JointMode const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->joint_modes[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->tool_mode, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_JointMode with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_JointMode_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_urinterfaces_msg_JointMode* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->joint_modes[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->tool_mode, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_urinterfaces_msg_JointMode_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_JointMode transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_JointMode_encode(roswasmc_bounded_2_urinterfaces_msg_JointMode const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_JointMode_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_JointMode_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_JointMode_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_JointMode value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_JointMode_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_JointMode* value)
{
    roswasmc_bounded_2_urinterfaces_msg_JointMode next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 19u || length > 147u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_JointMode_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/JointTemperature value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_JointTemperature
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    float data[6];
} roswasmc_bounded_2_urinterfaces_msg_JointTemperature;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTTEMPERATURE_MAX_WIRE_BYTES 164u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTTEMPERATURE_MIN_WIRE_BYTES 36u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTTEMPERATURE_CODEC_IDENTITY "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_JointTemperature field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_JointTemperature_valid(roswasmc_bounded_2_urinterfaces_msg_JointTemperature const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_JointTemperature.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_JointTemperature_wire_size(roswasmc_bounded_2_urinterfaces_msg_JointTemperature const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
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
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_JointTemperature with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_JointTemperature_write_fields(roswasmc_bounded_2_urinterfaces_msg_JointTemperature const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_JointTemperature with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_JointTemperature_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_urinterfaces_msg_JointTemperature* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_urinterfaces_msg_JointTemperature_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_JointTemperature transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_JointTemperature_encode(roswasmc_bounded_2_urinterfaces_msg_JointTemperature const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_JointTemperature_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_JointTemperature_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_JointTemperature_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_JointTemperature value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_JointTemperature_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_JointTemperature* value)
{
    roswasmc_bounded_2_urinterfaces_msg_JointTemperature next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 164u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_JointTemperature_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/JointVoltage value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_JointVoltage
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    double data[6];
} roswasmc_bounded_2_urinterfaces_msg_JointVoltage;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTVOLTAGE_MAX_WIRE_BYTES 188u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTVOLTAGE_MIN_WIRE_BYTES 60u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JOINTVOLTAGE_CODEC_IDENTITY "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_JointVoltage field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_JointVoltage_valid(roswasmc_bounded_2_urinterfaces_msg_JointVoltage const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_JointVoltage.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_JointVoltage_wire_size(roswasmc_bounded_2_urinterfaces_msg_JointVoltage const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_JointVoltage with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_JointVoltage_write_fields(roswasmc_bounded_2_urinterfaces_msg_JointVoltage const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_JointVoltage with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_JointVoltage_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_urinterfaces_msg_JointVoltage* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_urinterfaces_msg_JointVoltage_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_JointVoltage transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_JointVoltage_encode(roswasmc_bounded_2_urinterfaces_msg_JointVoltage const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_JointVoltage_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_JointVoltage_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_JointVoltage_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_JointVoltage value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_JointVoltage_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_JointVoltage* value)
{
    roswasmc_bounded_2_urinterfaces_msg_JointVoltage next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 60u || length > 188u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_JointVoltage_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/JsonStringType value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_JsonStringType
{
    /** @brief Declared field json_string; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_String json_string;
} roswasmc_bounded_2_urinterfaces_msg_JsonStringType;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JSONSTRINGTYPE_MAX_WIRE_BYTES 1028u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JSONSTRINGTYPE_MIN_WIRE_BYTES 4u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_JSONSTRINGTYPE_CODEC_IDENTITY "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_JsonStringType field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_JsonStringType_valid(roswasmc_bounded_2_urinterfaces_msg_JsonStringType const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_String_valid(&value->json_string))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_JsonStringType.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_JsonStringType_wire_size(roswasmc_bounded_2_urinterfaces_msg_JsonStringType const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_String_wire_size(&value->json_string);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_JsonStringType with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_JsonStringType_write_fields(roswasmc_bounded_2_urinterfaces_msg_JsonStringType const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_String_write_fields(&value->json_string, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_JsonStringType with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_JsonStringType_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_urinterfaces_msg_JsonStringType* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_String_read_fields(p, n, offset, &value->json_string))
        return 0;
    return roswasmc_bounded_2_urinterfaces_msg_JsonStringType_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_JsonStringType transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_JsonStringType_encode(roswasmc_bounded_2_urinterfaces_msg_JsonStringType const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_JsonStringType_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_JsonStringType_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_JsonStringType_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_JsonStringType value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_JsonStringType_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_JsonStringType* value)
{
    roswasmc_bounded_2_urinterfaces_msg_JsonStringType next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 1028u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_JsonStringType_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/RuntimeState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_RuntimeState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    int8_t data;
} roswasmc_bounded_2_urinterfaces_msg_RuntimeState;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_MAX_WIRE_BYTES 141u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_MIN_WIRE_BYTES 13u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_CODEC_IDENTITY "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6"
/** @brief Original scalar constant PROGRAM_STATE_UNDEFINED=-1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_PROGRAM_STATE_UNDEFINED -INT32_C(1)
/** @brief Original scalar constant PROGRAM_STATE_STOPPING=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_PROGRAM_STATE_STOPPING INT32_C(0)
/** @brief Original scalar constant PROGRAM_STATE_STOPPED=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_PROGRAM_STATE_STOPPED INT32_C(1)
/** @brief Original scalar constant PROGRAM_STATE_RUNNING=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_PROGRAM_STATE_RUNNING INT32_C(2)
/** @brief Original scalar constant PROGRAM_STATE_PAUSING=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_PROGRAM_STATE_PAUSING INT32_C(3)
/** @brief Original scalar constant PROGRAM_STATE_PAUSED=4; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_PROGRAM_STATE_PAUSED INT32_C(4)
/** @brief Original scalar constant PROGRAM_STATE_RESUMING=5; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_PROGRAM_STATE_RESUMING INT32_C(5)
/** @brief Original scalar constant PROGRAM_STATE_RETRACTING=6; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_RUNTIMESTATE_PROGRAM_STATE_RETRACTING INT32_C(6)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_RuntimeState field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_RuntimeState_valid(roswasmc_bounded_2_urinterfaces_msg_RuntimeState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_RuntimeState.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_RuntimeState_wire_size(roswasmc_bounded_2_urinterfaces_msg_RuntimeState const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_RuntimeState with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_RuntimeState_write_fields(roswasmc_bounded_2_urinterfaces_msg_RuntimeState const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_RuntimeState with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_RuntimeState_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_urinterfaces_msg_RuntimeState* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->data, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_urinterfaces_msg_RuntimeState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_RuntimeState transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_RuntimeState_encode(roswasmc_bounded_2_urinterfaces_msg_RuntimeState const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_RuntimeState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_RuntimeState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_RuntimeState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_RuntimeState value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_RuntimeState_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_RuntimeState* value)
{
    roswasmc_bounded_2_urinterfaces_msg_RuntimeState next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 13u || length > 141u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_RuntimeState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/SafetyStatus value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_SafetyStatus
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    int8_t data;
} roswasmc_bounded_2_urinterfaces_msg_SafetyStatus;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_MAX_WIRE_BYTES 141u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_MIN_WIRE_BYTES 13u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_CODEC_IDENTITY "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4"
/** @brief Original scalar constant NORMAL=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_NORMAL INT32_C(1)
/** @brief Original scalar constant REDUCED=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_REDUCED INT32_C(2)
/** @brief Original scalar constant PROTECTIVE_STOP=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_PROTECTIVE_STOP INT32_C(3)
/** @brief Original scalar constant RECOVERY=4; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_RECOVERY INT32_C(4)
/** @brief Original scalar constant SAFEGUARD_STOP=5; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_SAFEGUARD_STOP INT32_C(5)
/** @brief Original scalar constant SYSTEM_EMERGENCY_STOP=6; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_SYSTEM_EMERGENCY_STOP INT32_C(6)
/** @brief Original scalar constant ROBOT_EMERGENCY_STOP=7; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_ROBOT_EMERGENCY_STOP INT32_C(7)
/** @brief Original scalar constant VIOLATION=8; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_VIOLATION INT32_C(8)
/** @brief Original scalar constant FAULT=9; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_FAULT INT32_C(9)
/** @brief Original scalar constant VALIDATE_JOINT_ID=10; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_VALIDATE_JOINT_ID INT32_C(10)
/** @brief Original scalar constant UNDEFINED_SAFETY_MODE=11; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_UNDEFINED_SAFETY_MODE INT32_C(11)
/** @brief Original scalar constant AUTOMATIC_MODE_SAFEGUARD_STOP=12; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_AUTOMATIC_MODE_SAFEGUARD_STOP INT32_C(12)
/** @brief Original scalar constant SYSTEM_THREE_POSITION_ENABLING_STOP=13; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_SYSTEM_THREE_POSITION_ENABLING_STOP INT32_C(13)
/** @brief Original scalar constant TP_THREE_POSITION_ENABLING_STOP=14; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_TP_THREE_POSITION_ENABLING_STOP INT32_C(14)
/** @brief Original scalar constant IMMI_EMERGENCY_STOP=15; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_IMMI_EMERGENCY_STOP INT32_C(15)
/** @brief Original scalar constant IMMI_SAFEGUARD_STOP=16; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_IMMI_SAFEGUARD_STOP INT32_C(16)
/** @brief Original scalar constant PROFISAFE_WAITING_FOR_PARAMETERS=17; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_PROFISAFE_WAITING_FOR_PARAMETERS INT32_C(17)
/** @brief Original scalar constant PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP=18; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP INT32_C(18)
/** @brief Original scalar constant PROFISAFE_SAFEGUARD_STOP=19; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_PROFISAFE_SAFEGUARD_STOP INT32_C(19)
/** @brief Original scalar constant PROFISAFE_EMERGENCY_STOP=20; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_PROFISAFE_EMERGENCY_STOP INT32_C(20)
/** @brief Original scalar constant SAFETY_API_SAFEGUARD_STOP=22; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_SAFETY_API_SAFEGUARD_STOP INT32_C(22)
/** @brief Original scalar constant IO_PLANE_STOP=23; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SAFETYSTATUS_IO_PLANE_STOP INT32_C(23)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_SafetyStatus field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_valid(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_SafetyStatus.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_wire_size(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_SafetyStatus with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_write_fields(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_SafetyStatus with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_urinterfaces_msg_SafetyStatus* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->data, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_SafetyStatus transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_encode(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_SafetyStatus value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_SafetyStatus* value)
{
    roswasmc_bounded_2_urinterfaces_msg_SafetyStatus next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 13u || length > 141u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/SharedVariablesEditResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** @brief Declared field result_message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_String result_message;
} roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SHAREDVARIABLESEDITRESPONSE_MAX_WIRE_BYTES 1029u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SHAREDVARIABLESEDITRESPONSE_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SHAREDVARIABLESEDITRESPONSE_CODEC_IDENTITY                                                                         \
    "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_valid(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_String_valid(&value->result_message))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_wire_size(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += roswasmc_bounded_2_std_msgs_msg_String_wire_size(&value->result_message);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_write_fields(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    roswasmc_bounded_2_std_msgs_msg_String_write_fields(&value->result_message, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse with an exclusive
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
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse* value)
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
    if(!roswasmc_bounded_2_std_msgs_msg_String_read_fields(p, n, offset, &value->result_message))
        return 0;
    return roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_encode(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse* value)
{
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 1029u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/SpeedSliderFraction value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    double data;
} roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SPEEDSLIDERFRACTION_MAX_WIRE_BYTES 148u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SPEEDSLIDERFRACTION_MIN_WIRE_BYTES 20u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_SPEEDSLIDERFRACTION_CODEC_IDENTITY "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_valid(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->data, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_wire_size(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_write_fields(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->data, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->data, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_encode(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction* value)
{
    roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 148u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/TCPState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_TCPState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Pose pose;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Twist speed;
} roswasmc_bounded_2_urinterfaces_msg_TCPState;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TCPSTATE_MAX_WIRE_BYTES 244u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TCPSTATE_MIN_WIRE_BYTES 116u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TCPSTATE_CODEC_IDENTITY "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_TCPState_default(roswasmc_bounded_2_urinterfaces_msg_TCPState* value)
{
    roswasmc_bounded_2_urinterfaces_msg_TCPState next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_Pose_default(&next.pose);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_TCPState field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_TCPState_valid(roswasmc_bounded_2_urinterfaces_msg_TCPState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value->pose))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->speed))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_TCPState.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_TCPState_wire_size(roswasmc_bounded_2_urinterfaces_msg_TCPState const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value->pose);
    n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->speed);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_TCPState with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_TCPState_write_fields(roswasmc_bounded_2_urinterfaces_msg_TCPState const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(&value->pose, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->speed, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_TCPState with an exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 * @param n Exact readable region size in bytes.
 * @return Nonzero only after every nested field validates; internal temporaries may contain a partial prefix on
 * refusal.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_TCPState_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_urinterfaces_msg_TCPState* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(p, n, offset, &value->pose))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->speed))
        return 0;
    return roswasmc_bounded_2_urinterfaces_msg_TCPState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_TCPState transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_TCPState_encode(roswasmc_bounded_2_urinterfaces_msg_TCPState const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_TCPState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_TCPState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_TCPState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_TCPState value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_TCPState_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_TCPState* value)
{
    roswasmc_bounded_2_urinterfaces_msg_TCPState next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 116u || length > 244u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_TCPState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/ToolOutputMode value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field output_mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t output_mode;
    /** @brief Declared field output_pin_mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t output_pin_mode[2];
} roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_MAX_WIRE_BYTES 143u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_MIN_WIRE_BYTES 15u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_CODEC_IDENTITY "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660"
/** @brief Original scalar constant TOOL_OUTPUT=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_TOOL_OUTPUT UINT32_C(0)
/** @brief Original scalar constant TOOL_POWER=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_TOOL_POWER UINT32_C(1)
/** @brief Original scalar constant TOOL_SAFE=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_TOOL_SAFE UINT32_C(2)
/** @brief Original scalar constant OUTPUT_MODE_DISABLED=0; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_OUTPUT_MODE_DISABLED UINT32_C(0)
/** @brief Original scalar constant OUTPUT_MODE_SINKING=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_OUTPUT_MODE_SINKING UINT32_C(1)
/** @brief Original scalar constant OUTPUT_MODE_SOURCING=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_OUTPUT_MODE_SOURCING UINT32_C(2)
/** @brief Original scalar constant OUTPUT_MODE_PUSH_PULL=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_TOOLOUTPUTMODE_OUTPUT_MODE_PUSH_PULL UINT32_C(3)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_valid(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_wire_size(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
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

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_write_fields(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->output_mode, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->output_pin_mode[i], 1);
            *offset += 1;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->output_mode, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->output_pin_mode[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_encode(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode* value)
{
    roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 15u || length > 143u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/VariableUpdate value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_VariableUpdate
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_JsonStringType data;
} roswasmc_bounded_2_urinterfaces_msg_VariableUpdate;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_VARIABLEUPDATE_MAX_WIRE_BYTES 1168u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_VARIABLEUPDATE_MIN_WIRE_BYTES 16u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_VARIABLEUPDATE_CODEC_IDENTITY "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_VariableUpdate field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_valid(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_JsonStringType_valid(&value->data))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_VariableUpdate.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_wire_size(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_urinterfaces_msg_JsonStringType_wire_size(&value->data);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_VariableUpdate with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_write_fields(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_urinterfaces_msg_JsonStringType_write_fields(&value->data, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_VariableUpdate with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_urinterfaces_msg_VariableUpdate* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_JsonStringType_read_fields(p, n, offset, &value->data))
        return 0;
    return roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_VariableUpdate transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_encode(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_VariableUpdate value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_VariableUpdate* value)
{
    roswasmc_bounded_2_urinterfaces_msg_VariableUpdate next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 1168u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/msg/VoltageCurrentStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field voltage; canonical capacity is part of CODEC_IDENTITY. */
    double voltage;
    /** @brief Declared field current; canonical capacity is part of CODEC_IDENTITY. */
    double current;
} roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_VOLTAGECURRENTSTAMPED_MAX_WIRE_BYTES 156u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_VOLTAGECURRENTSTAMPED_MIN_WIRE_BYTES 28u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_VOLTAGECURRENTSTAMPED_CODEC_IDENTITY "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_valid(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_wire_size(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_write_fields(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->current, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_encode(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped* value)
{
    roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 156u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_std_msgs_msg_String data[16];
} roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_data_sequence;

/** @brief Complete ROS2 urinterfaces/msg/WorldModelNames value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_msg_WorldModelNames
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_data_sequence data;
} roswasmc_bounded_2_urinterfaces_msg_WorldModelNames;

#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_WORLDMODELNAMES_MAX_WIRE_BYTES 16592u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_WORLDMODELNAMES_MIN_WIRE_BYTES 16u
#define ROSWASMC_BOUNDED_2_URINTERFACES_MSG_WORLDMODELNAMES_CODEC_IDENTITY "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_msg_WorldModelNames field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_valid(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_String_valid(&value->data.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_msg_WorldModelNames.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_wire_size(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += roswasmc_bounded_2_std_msgs_msg_String_wire_size(&value->data.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_WorldModelNames with an exclusive checked
 * cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_write_fields(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            roswasmc_bounded_2_std_msgs_msg_String_write_fields(&value->data.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_msg_WorldModelNames with an exclusive checked
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
static inline int roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_urinterfaces_msg_WorldModelNames* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_String_read_fields(p, n, offset, &value->data.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_msg_WorldModelNames transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_encode(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_msg_WorldModelNames value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_decode(void const* input, size_t length, roswasmc_bounded_2_urinterfaces_msg_WorldModelNames* value)
{
    roswasmc_bounded_2_urinterfaces_msg_WorldModelNames next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16592u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_urinterfaces_msg_Analog data[16];
} roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_data_sequence;

/** @brief Complete ROS2 urinterfaces/srv/SetAnalogOutput_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request
{
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_data_sequence data;
} roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETANALOGOUTPUT_REQUEST_MAX_WIRE_BYTES 100u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETANALOGOUTPUT_REQUEST_MIN_WIRE_BYTES 4u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETANALOGOUTPUT_REQUEST_CODEC_IDENTITY "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_valid(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const* value)
{
    if(!value)
        return 0;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Analog_valid(&value->data.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_wire_size(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += roswasmc_bounded_2_urinterfaces_msg_Analog_wire_size(&value->data.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_write_fields(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            roswasmc_bounded_2_urinterfaces_msg_Analog_write_fields(&value->data.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Analog_read_fields(p, n, offset, &value->data.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_encode(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request* value)
{
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 100u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/srv/SetAnalogOutput_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
} roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETANALOGOUTPUT_RESPONSE_MAX_WIRE_BYTES 1u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETANALOGOUTPUT_RESPONSE_MIN_WIRE_BYTES 1u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETANALOGOUTPUT_RESPONSE_CODEC_IDENTITY "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_valid(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_wire_size(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_write_fields(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const* value,
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
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response* value)
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
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_encode(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response* value)
{
    roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_urinterfaces_msg_Digital data[16];
} roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_data_sequence;

/** @brief Complete ROS2 urinterfaces/srv/SetDigitalOutput_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request
{
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_data_sequence data;
} roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETDIGITALOUTPUT_REQUEST_MAX_WIRE_BYTES 36u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETDIGITALOUTPUT_REQUEST_MIN_WIRE_BYTES 4u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETDIGITALOUTPUT_REQUEST_CODEC_IDENTITY "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_valid(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const* value)
{
    if(!value)
        return 0;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Digital_valid(&value->data.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_wire_size(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += roswasmc_bounded_2_urinterfaces_msg_Digital_wire_size(&value->data.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_write_fields(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            roswasmc_bounded_2_urinterfaces_msg_Digital_write_fields(&value->data.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_urinterfaces_msg_Digital_read_fields(p, n, offset, &value->data.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_encode(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request* value)
{
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 36u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/srv/SetDigitalOutput_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
} roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETDIGITALOUTPUT_RESPONSE_MAX_WIRE_BYTES 1u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETDIGITALOUTPUT_RESPONSE_MIN_WIRE_BYTES 1u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETDIGITALOUTPUT_RESPONSE_CODEC_IDENTITY "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_valid(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_wire_size(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_write_fields(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const* value,
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
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response with an exclusive
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
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response* value)
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
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_encode(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response* value)
{
    roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/srv/SetSpeedFraction_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request
{
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    float value;
} roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETSPEEDFRACTION_REQUEST_MAX_WIRE_BYTES 4u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETSPEEDFRACTION_REQUEST_MIN_WIRE_BYTES 4u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETSPEEDFRACTION_REQUEST_CODEC_IDENTITY "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_valid(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->value, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_wire_size(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_write_fields(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->value, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_encode(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request* value)
{
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/srv/SetSpeedFraction_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
} roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETSPEEDFRACTION_RESPONSE_MAX_WIRE_BYTES 1u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETSPEEDFRACTION_RESPONSE_MIN_WIRE_BYTES 1u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SETSPEEDFRACTION_RESPONSE_CODEC_IDENTITY "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_valid(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_wire_size(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_write_fields(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const* value,
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
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response with an exclusive
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
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response* value)
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
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_encode(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response* value)
{
    roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/srv/SharedVariablesEditor_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request
{
    /** @brief Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_JsonStringType request;
} roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SHAREDVARIABLESEDITOR_REQUEST_MAX_WIRE_BYTES 1028u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SHAREDVARIABLESEDITOR_REQUEST_MIN_WIRE_BYTES 4u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SHAREDVARIABLESEDITOR_REQUEST_CODEC_IDENTITY                                                                       \
    "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_valid(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_JsonStringType_valid(&value->request))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_wire_size(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_urinterfaces_msg_JsonStringType_wire_size(&value->request);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_write_fields(
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_urinterfaces_msg_JsonStringType_write_fields(&value->request, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request with an
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
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_urinterfaces_msg_JsonStringType_read_fields(p, n, offset, &value->request))
        return 0;
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_encode(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request* value)
{
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 1028u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/srv/SharedVariablesEditor_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response
{
    /** @brief Declared field response; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse response;
} roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SHAREDVARIABLESEDITOR_RESPONSE_MAX_WIRE_BYTES 1029u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SHAREDVARIABLESEDITOR_RESPONSE_MIN_WIRE_BYTES 5u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_SHAREDVARIABLESEDITOR_RESPONSE_CODEC_IDENTITY                                                                      \
    "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_valid(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_valid(&value->response))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_wire_size(
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_wire_size(&value->response);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response with an
 * exclusive checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_write_fields(
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_write_fields(&value->response, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response with an
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
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_read_fields(p, n, offset, &value->response))
        return 0;
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_encode(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response* value)
{
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 1029u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/srv/VariablesViewer_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_VARIABLESVIEWER_REQUEST_MAX_WIRE_BYTES 0u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_VARIABLESVIEWER_REQUEST_MIN_WIRE_BYTES 0u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_VARIABLESVIEWER_REQUEST_CODEC_IDENTITY "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_valid(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_wire_size(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const* value)
{
    (void)value;
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_write_fields(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_encode(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request* value)
{
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Complete ROS2 urinterfaces/srv/VariablesViewer_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response
{
    /** @brief Declared field response; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_urinterfaces_msg_VariableUpdate response;
} roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response;

#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_VARIABLESVIEWER_RESPONSE_MAX_WIRE_BYTES 1168u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_VARIABLESVIEWER_RESPONSE_MIN_WIRE_BYTES 16u
#define ROSWASMC_BOUNDED_2_URINTERFACES_SRV_VARIABLESVIEWER_RESPONSE_CODEC_IDENTITY "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate the complete active roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response field graph.
 * @param[in] value Borrowed initialized full record; invalid null is refused.
 * @return Nonzero only when all field domains, extents and selected semantic predicates hold.
 * @details This is a pure canonical-value check. Units follow the original schema; no scaling or native authorization
 * occurs.
 */
static inline int roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_valid(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_valid(&value->response))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the exact initialized canonical extent of
 * roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response.
 * @pre The complete record must already pass its matching valid function.
 * @param[in] value Borrowed unchanged valid record; unused inactive array tails are not measured.
 * @return Active byte extent, bounded by this type's MAX_WIRE_BYTES constant.
 * @details This size is independent of native sizeof, allocation capacity and ROS queue bounds.
 */
static inline size_t
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_wire_size(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_wire_size(&value->response);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response with an exclusive
 * checked cursor.
 * @details Internal composition operation; use encode/decode for the public whole-value transaction.
 * @param value Complete selected record with caller-owned storage.
 * @param p Borrowed canonical byte region; retain its storage throughout the call.
 * @param[in,out] offset Exclusive current byte position in that region.
 * @ownership No resource, allocation, thread, capability or native ROS object is created.
 */
static inline void
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_write_fields(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
    roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_write_fields(&value->response, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Process the nested fields of roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response with an exclusive
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
static inline int roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response* value)
{
    (void)value;
    (void)p;
    (void)offset;
    (void)n;
    if(!roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_read_fields(p, n, offset, &value->response))
        return 0;
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode every field of roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response transactionally.
 * @details Validate the whole value, all active prefixes, finite bounds and disjoint storage before writing.
 * @param[in] value Complete borrowed record; keep all active fields stable until return.
 * @param[out] output Caller-owned byte region; disjoint from the value and length storage.
 * @param capacity Writable output capacity in bytes; no truncation is performed.
 * @param[in,out] length Receives the exact initialized byte extent only on success.
 * @return 0 on success, 22 for invalid value/storage and 90 for insufficient output capacity.
 * @post On refusal, output bytes and length retain their original contents. No allocation or ROS call occurs.
 */
static inline uint32_t
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_encode(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response value.
 * @details Validate every cursor, scalar, nested bound and trailing byte before publishing the temporary.
 * @param[in] input Borrowed exact canonical bytes; disjoint from the destination.
 * @param length Exact readable byte extent; not maximum capacity.
 * @param[in,out] value Caller-owned full record; unchanged when input is refused.
 * @return 0 on complete success or 22 for malformed, truncated, trailing or overlapping input.
 * @ownership The decoded inline storage belongs entirely to the caller. No native pointer is exposed.
 */
static inline uint32_t roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response* value)
{
    roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 1168u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

#undef UWVM_BOUNDED_ASSERT
#endif
