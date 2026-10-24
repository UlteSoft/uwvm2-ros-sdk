/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_DEEP_ROBOTICS_RECORDS_2E2213BDAB060AA5F706E84B908731038D516ED428BEAB95522CF59D0C70DC8F
#define UWVM_DEEP_ROBOTICS_RECORDS_2E2213BDAB060AA5F706E84B908731038D516ED428BEAB95522CF59D0C70DC8F
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
# define DEEP_ROBOTICS_BOUNDED_INVALID 22u
# define DEEP_ROBOTICS_BOUNDED_TOO_LARGE 90u
# if defined(__cplusplus) && __cplusplus >= 201103L
#  define DEEP_ROBOTICS_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
# elif defined(__cplusplus)
#  define DEEP_ROBOTICS_BOUNDED_ASSERT(x) typedef char deep_robotics_bounded_representation_required[(x) ? 1 : -1]
# else
#  define DEEP_ROBOTICS_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
# endif
DEEP_ROBOTICS_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 &&
                             FLT_MAX_EXP == 128 && DBL_MAX_EXP == 1024);

/** @brief Copy exact primitive/string bytes; compiler intrinsics avoid byte-at-a-time copies. */
static inline void deep_robotics_bounded_copy(void* out, void const* in, size_t n)
{
# if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
# else
    size_t i;
    for(i = 0; i < n; ++i)
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
# endif
}

static inline uint64_t deep_robotics_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for(i = 0; i < n; ++i)
        v |= (uint64_t)p[i] << (8 * i);
    return v;
}

static inline void deep_robotics_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for(i = 0; i < n; ++i)
        p[i] = (unsigned char)(v >> (8 * i));
}

/** @brief Strict Unicode scalar UTF-8, rejecting embedded NUL as required by this profile. */
static inline int deep_robotics_bounded_utf8(unsigned char const* p, size_t n)
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

static inline int deep_robotics_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
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

/** @brief Complete ROS2 builtin_interfaces/msg/Time value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Time
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Time;

# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_CODEC_IDENTITY "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->nanosec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_0 != 0xa2e050daUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_1 != 0x757eb1c7UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_2 != 0x52490123UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_3 != 0x717a2503UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_4 != 0xa7a1ed85UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_5 != 0x7def0754UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_6 != 0x6ba006feUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_7 != 0x372c23bfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_0 0xa2e050daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_1 0x757eb1c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_2 0x52490123UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_3 0x717a2503UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_4 0xa7a1ed85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_5 0x7def0754UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_6 0x6ba006feUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_7 0x372c23bfUL

/** @brief Complete ROS2 drdds/msg/MetaType value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_MetaType
{
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t frame_id;
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
} roswasmc_bounded_2_drdds_msg_MetaType;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_METATYPE_CODEC_IDENTITY "UWVMROS1_589934883c499944b42386d9aa89152e69c3bb41dcf26d0246cacdbb1b50162f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_MetaType_valid(roswasmc_bounded_2_drdds_msg_MetaType const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_MetaType_wire_size(roswasmc_bounded_2_drdds_msg_MetaType const* value)
{
    size_t n = 0;
    n += 8;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_msg_MetaType_write_fields(roswasmc_bounded_2_drdds_msg_MetaType const* value, unsigned char* p, size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->frame_id, 8);
    *offset += 8;
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_MetaType_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_MetaType* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
        deep_robotics_bounded_copy(&value->frame_id, &bits, 8);
    }
    *offset += 8;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
        return 0;
    return roswasmc_bounded_2_drdds_msg_MetaType_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_MetaType_encode(roswasmc_bounded_2_drdds_msg_MetaType const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_MetaType_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_MetaType_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_MetaType_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_MetaType_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_MetaType* value)
{
    roswasmc_bounded_2_drdds_msg_MetaType next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_MetaType_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_0 != 0x96c82583UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_1 != 0x4ee4163aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_2 != 0x6a8c69a9UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_3 != 0x9bb32b0eUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_4 != 0x5d9b0baaUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_5 != 0x88d195b0UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_6 != 0x1ed3b4c5UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_7 != 0xba03f207UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_0 0x96c82583UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_1 0x4ee4163aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_2 0x6a8c69a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_3 0x9bb32b0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_4 0x5d9b0baaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_5 0x88d195b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_6 0x1ed3b4c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_7 0xba03f207UL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[16];
} roswasmc_bounded_2_drdds_msg_BatteryDataValue_battery_temperature_sequence;

/** @brief Complete ROS2 drdds/msg/BatteryDataValue value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_BatteryDataValue
{
    /** @brief Declared field voltage; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t voltage;
    /** @brief Declared field current; canonical capacity is part of CODEC_IDENTITY. */
    int16_t current;
    /** @brief Declared field remaining_capacity; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t remaining_capacity;
    /** @brief Declared field nominal_capacity; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t nominal_capacity;
    /** @brief Declared field cycles; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t cycles;
    /** @brief Declared field production_date; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t production_date;
    /** @brief Declared field balanced_low; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t balanced_low;
    /** @brief Declared field balanced_high; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t balanced_high;
    /** @brief Declared field protected_state; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t protected_state;
    /** @brief Declared field software_version; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t software_version;
    /** @brief Declared field battery_level; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t battery_level;
    /** @brief Declared field mos_state; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t mos_state;
    /** @brief Declared field battery_quantity; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t battery_quantity;
    /** @brief Declared field battery_ntc; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t battery_ntc;
    /** @brief Declared field battery_temperature; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_BatteryDataValue_battery_temperature_sequence battery_temperature;
    /** @brief Declared field battery_serialnum; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t battery_serialnum[32];
} roswasmc_bounded_2_drdds_msg_BatteryDataValue;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_MAX_WIRE_BYTES 123u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_MIN_WIRE_BYTES 59u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATAVALUE_CODEC_IDENTITY "UWVMROS1_076c053d37d08f14e5a1a886e696e6a0f7fe3a7bea54b38206cdcba3a23313bc"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_BatteryDataValue_valid(roswasmc_bounded_2_drdds_msg_BatteryDataValue const* value)
{
    if(!value)
        return 0;
    if(value->battery_temperature.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->battery_temperature.size; ++i)
        {
            {
                uint32_t bits;
                deep_robotics_bounded_copy(&bits, &value->battery_temperature.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 32u; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_BatteryDataValue_wire_size(roswasmc_bounded_2_drdds_msg_BatteryDataValue const* value)
{
    size_t n = 0;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 4;
    if(value->battery_temperature.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->battery_temperature.size; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 32u; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_BatteryDataValue_write_fields(roswasmc_bounded_2_drdds_msg_BatteryDataValue const* value, unsigned char* p, size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->voltage, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->current, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->remaining_capacity, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->nominal_capacity, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->cycles, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->production_date, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->balanced_low, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->balanced_high, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->protected_state, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->software_version, 1);
    *offset += 1;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->battery_level, 1);
    *offset += 1;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->mos_state, 1);
    *offset += 1;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->battery_quantity, 1);
    *offset += 1;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->battery_ntc, 1);
    *offset += 1;
    deep_robotics_bounded_put(p + *offset, value->battery_temperature.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->battery_temperature.size; ++i)
        {
            {
                uint32_t bits;
                deep_robotics_bounded_copy(&bits, &value->battery_temperature.data[i], 4);
                deep_robotics_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 32u; ++i)
        {
            deep_robotics_bounded_put(p + *offset, (uint64_t)value->battery_serialnum[i], 1);
            *offset += 1;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_drdds_msg_BatteryDataValue_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_drdds_msg_BatteryDataValue* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->voltage, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->current, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->remaining_capacity, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->nominal_capacity, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->cycles, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->production_date, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->balanced_low, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->balanced_high, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->protected_state, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->software_version, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->battery_level, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->mos_state, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->battery_quantity, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->battery_ntc, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->battery_temperature.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->battery_temperature.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->battery_temperature.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
                deep_robotics_bounded_copy(&value->battery_temperature.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 32u; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
                deep_robotics_bounded_copy(&value->battery_serialnum[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_drdds_msg_BatteryDataValue_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_BatteryDataValue_encode(roswasmc_bounded_2_drdds_msg_BatteryDataValue const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_BatteryDataValue_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_BatteryDataValue_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_BatteryDataValue_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_BatteryDataValue_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_BatteryDataValue* value)
{
    roswasmc_bounded_2_drdds_msg_BatteryDataValue next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 59u || length > 123u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_BatteryDataValue_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_0 != 0x38f93e7dUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_1 != 0x4bbf5a7bUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_2 != 0x131785c8UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_3 != 0x7edcf30eUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_4 != 0x25cdcaaeUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_5 != 0x0c872f96UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_6 != 0x0690c413UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_7 != 0x0deb2e51UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_0 0x38f93e7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_1 0x4bbf5a7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_2 0x131785c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_3 0x7edcf30eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_4 0x25cdcaaeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_5 0x0c872f96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_6 0x0690c413UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_7 0x0deb2e51UL

/** @brief At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_drdds_msg_BatteryDataValue data[4];
} roswasmc_bounded_2_drdds_msg_BatteryData_data_sequence;

/** @brief Complete ROS2 drdds/msg/BatteryData value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_BatteryData
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_MetaType header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_BatteryData_data_sequence data;
} roswasmc_bounded_2_drdds_msg_BatteryData;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_MAX_WIRE_BYTES 512u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_BATTERYDATA_CODEC_IDENTITY "UWVMROS1_8ab951a101e2e9522c39bcbb7fabea8966e78ea8141cb568e0aa1ac0c89d692e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_BatteryData_valid(roswasmc_bounded_2_drdds_msg_BatteryData const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_MetaType_valid(&value->header))
        return 0;
    if(value->data.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_drdds_msg_BatteryDataValue_valid(&value->data.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_BatteryData_wire_size(roswasmc_bounded_2_drdds_msg_BatteryData const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_drdds_msg_MetaType_wire_size(&value->header);
    n += 4;
    if(value->data.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += roswasmc_bounded_2_drdds_msg_BatteryDataValue_wire_size(&value->data.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_BatteryData_write_fields(roswasmc_bounded_2_drdds_msg_BatteryData const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_drdds_msg_MetaType_write_fields(&value->header, p, offset);
    deep_robotics_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            roswasmc_bounded_2_drdds_msg_BatteryDataValue_write_fields(&value->data.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_BatteryData_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_BatteryData* value)
{
    if(!roswasmc_bounded_2_drdds_msg_MetaType_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->data.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_drdds_msg_BatteryDataValue_read_fields(p, n, offset, &value->data.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_drdds_msg_BatteryData_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_BatteryData_encode(roswasmc_bounded_2_drdds_msg_BatteryData const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_BatteryData_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_BatteryData_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_BatteryData_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_BatteryData_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_BatteryData* value)
{
    roswasmc_bounded_2_drdds_msg_BatteryData next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 512u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_BatteryData_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_0 != 0x6ff3fe13UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_1 != 0xe0263137UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_2 != 0xb637d144UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_3 != 0xbc9df87cUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_4 != 0xd562554eUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_5 != 0xa50a1a30UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_6 != 0x82ed35dfUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_7 != 0x87c008c6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_0 0x6ff3fe13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_1 0xe0263137UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_2 0xb637d144UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_3 0xbc9df87cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_4 0xd562554eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_5 0xa50a1a30UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_6 0x82ed35dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_7 0x87c008c6UL

/** @brief Complete ROS2 drdds/msg/GamepadData value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_GamepadData
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_MetaType header;
    /** @brief Declared field left_axis_x; canonical capacity is part of CODEC_IDENTITY. */
    float left_axis_x;
    /** @brief Declared field left_axis_y; canonical capacity is part of CODEC_IDENTITY. */
    float left_axis_y;
    /** @brief Declared field right_axis_x; canonical capacity is part of CODEC_IDENTITY. */
    float right_axis_x;
    /** @brief Declared field right_axis_y; canonical capacity is part of CODEC_IDENTITY. */
    float right_axis_y;
    /** @brief Declared field buttons; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t buttons;
} roswasmc_bounded_2_drdds_msg_GamepadData;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_MAX_WIRE_BYTES 34u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_MIN_WIRE_BYTES 34u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_GAMEPADDATA_CODEC_IDENTITY "UWVMROS1_14c915cd4dc71671a25bdc811b65f0fc26aeb415e234205d5d53e53dfd3c6978"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_GamepadData_valid(roswasmc_bounded_2_drdds_msg_GamepadData const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_MetaType_valid(&value->header))
        return 0;
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->left_axis_x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->left_axis_y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->right_axis_x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->right_axis_y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_GamepadData_wire_size(roswasmc_bounded_2_drdds_msg_GamepadData const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_drdds_msg_MetaType_wire_size(&value->header);
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_GamepadData_write_fields(roswasmc_bounded_2_drdds_msg_GamepadData const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_drdds_msg_MetaType_write_fields(&value->header, p, offset);
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->left_axis_x, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->left_axis_y, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->right_axis_x, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->right_axis_y, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->buttons, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_GamepadData_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_GamepadData* value)
{
    if(!roswasmc_bounded_2_drdds_msg_MetaType_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->left_axis_x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->left_axis_y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->right_axis_x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->right_axis_y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->buttons, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_2_drdds_msg_GamepadData_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_GamepadData_encode(roswasmc_bounded_2_drdds_msg_GamepadData const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_GamepadData_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_GamepadData_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_GamepadData_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_GamepadData_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_GamepadData* value)
{
    roswasmc_bounded_2_drdds_msg_GamepadData next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 34u || length > 34u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_GamepadData_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_0 != 0x112a0735UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_1 != 0xae1a19edUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_2 != 0xd16350fdUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_3 != 0x2e80df4dUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_4 != 0x63796b9bUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_5 != 0x227eca94UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_6 != 0xbb3e7a85UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_7 != 0xb779bd7cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_0 0x112a0735UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_1 0xae1a19edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_2 0xd16350fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_3 0x2e80df4dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_4 0x63796b9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_5 0x227eca94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_6 0xbb3e7a85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_7 0xb779bd7cUL

/** @brief Complete ROS2 drdds/msg/ImuDataValue value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_ImuDataValue
{
    /** @brief Declared field roll; canonical capacity is part of CODEC_IDENTITY. */
    float roll;
    /** @brief Declared field pitch; canonical capacity is part of CODEC_IDENTITY. */
    float pitch;
    /** @brief Declared field yaw; canonical capacity is part of CODEC_IDENTITY. */
    float yaw;
    /** @brief Declared field omega_x; canonical capacity is part of CODEC_IDENTITY. */
    float omega_x;
    /** @brief Declared field omega_y; canonical capacity is part of CODEC_IDENTITY. */
    float omega_y;
    /** @brief Declared field omega_z; canonical capacity is part of CODEC_IDENTITY. */
    float omega_z;
    /** @brief Declared field acc_x; canonical capacity is part of CODEC_IDENTITY. */
    float acc_x;
    /** @brief Declared field acc_y; canonical capacity is part of CODEC_IDENTITY. */
    float acc_y;
    /** @brief Declared field acc_z; canonical capacity is part of CODEC_IDENTITY. */
    float acc_z;
} roswasmc_bounded_2_drdds_msg_ImuDataValue;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_MAX_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_MIN_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATAVALUE_CODEC_IDENTITY "UWVMROS1_c857b56c129bf59c4c6d6e1ea61b4f46e01f6a938b7eb55826c52f0b1f18e859"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_ImuDataValue_valid(roswasmc_bounded_2_drdds_msg_ImuDataValue const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->roll, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->pitch, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->yaw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->omega_x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->omega_y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->omega_z, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->acc_x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->acc_y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->acc_z, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_ImuDataValue_wire_size(roswasmc_bounded_2_drdds_msg_ImuDataValue const* value)
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
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_ImuDataValue_write_fields(roswasmc_bounded_2_drdds_msg_ImuDataValue const* value, unsigned char* p, size_t* offset)
{
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->roll, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->pitch, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->yaw, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->omega_x, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->omega_y, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->omega_z, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->acc_x, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->acc_y, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->acc_z, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_ImuDataValue_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_ImuDataValue* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->roll, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->pitch, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->yaw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->omega_x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->omega_y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->omega_z, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->acc_x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->acc_y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->acc_z, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_ImuDataValue_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_ImuDataValue_encode(roswasmc_bounded_2_drdds_msg_ImuDataValue const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_ImuDataValue_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_ImuDataValue_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_ImuDataValue_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_ImuDataValue_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_ImuDataValue* value)
{
    roswasmc_bounded_2_drdds_msg_ImuDataValue next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 36u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_ImuDataValue_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_0 != 0x1775626eUL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_1 != 0xca22b3e6UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_2 != 0xc4a725f3UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_3 != 0xa203deb6UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_4 != 0xc4da994bUL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_5 != 0x22990648UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_6 != 0x80b7226eUL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_7 != 0x416f3392UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_0 0x1775626eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_1 0xca22b3e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_2 0xc4a725f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_3 0xa203deb6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_4 0xc4da994bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_5 0x22990648UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_6 0x80b7226eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_7 0x416f3392UL

/** @brief Complete ROS2 drdds/msg/ImuData value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_ImuData
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_MetaType header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_ImuDataValue data;
} roswasmc_bounded_2_drdds_msg_ImuData;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_MAX_WIRE_BYTES 52u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_MIN_WIRE_BYTES 52u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_IMUDATA_CODEC_IDENTITY "UWVMROS1_c98e1cc04d46c99666aea581a36b338bdd91561f843dc4cdfcd86a48e6cb989c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_ImuData_valid(roswasmc_bounded_2_drdds_msg_ImuData const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_MetaType_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_ImuDataValue_valid(&value->data))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_ImuData_wire_size(roswasmc_bounded_2_drdds_msg_ImuData const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_drdds_msg_MetaType_wire_size(&value->header);
    n += roswasmc_bounded_2_drdds_msg_ImuDataValue_wire_size(&value->data);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_msg_ImuData_write_fields(roswasmc_bounded_2_drdds_msg_ImuData const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_drdds_msg_MetaType_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_drdds_msg_ImuDataValue_write_fields(&value->data, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_ImuData_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_ImuData* value)
{
    if(!roswasmc_bounded_2_drdds_msg_MetaType_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_ImuDataValue_read_fields(p, n, offset, &value->data))
        return 0;
    return roswasmc_bounded_2_drdds_msg_ImuData_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_ImuData_encode(roswasmc_bounded_2_drdds_msg_ImuData const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_ImuData_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_ImuData_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_ImuData_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_ImuData_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_ImuData* value)
{
    roswasmc_bounded_2_drdds_msg_ImuData next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 52u || length > 52u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_ImuData_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_0 != 0x84702d96UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_1 != 0x0bf1e7c7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_2 != 0xdc67e7c2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_3 != 0x85bd6d6aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_4 != 0x5fb60bd2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_5 != 0x49e07d41UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_6 != 0x643d4d24UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_7 != 0xa890f38aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_0 0x84702d96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_1 0x0bf1e7c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_2 0xdc67e7c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_3 0x85bd6d6aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_4 0x5fb60bd2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_5 0x49e07d41UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_6 0x643d4d24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_7 0xa890f38aUL

/** @brief At most256 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[256];
} roswasmc_bounded_2_drdds_msg_JointCmdValue_name_sequence;

/** @brief Complete ROS2 drdds/msg/JointCmdValue value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_JointCmdValue
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_JointCmdValue_name_sequence name;
    /** @brief Declared field data_id; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t data_id;
    /** @brief Declared field control_word; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t control_word;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    float position;
    /** @brief Declared field torque; canonical capacity is part of CODEC_IDENTITY. */
    float torque;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    float velocity;
    /** @brief Declared field kp; canonical capacity is part of CODEC_IDENTITY. */
    float kp;
    /** @brief Declared field kd; canonical capacity is part of CODEC_IDENTITY. */
    float kd;
} roswasmc_bounded_2_drdds_msg_JointCmdValue;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_MAX_WIRE_BYTES 284u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTCMDVALUE_CODEC_IDENTITY "UWVMROS1_f685f314bb39c4543735ba73d92655c4cace1d1162a9c699275b3937460738de"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_JointCmdValue_valid(roswasmc_bounded_2_drdds_msg_JointCmdValue const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
        }
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->position, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->torque, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->velocity, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->kp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->kd, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_JointCmdValue_wire_size(roswasmc_bounded_2_drdds_msg_JointCmdValue const* value)
{
    size_t n = 0;
    n += 4;
    if(value->name.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 1;
        }
    }
    n += 2;
    n += 2;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_JointCmdValue_write_fields(roswasmc_bounded_2_drdds_msg_JointCmdValue const* value, unsigned char* p, size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            deep_robotics_bounded_put(p + *offset, (uint64_t)value->name.data[i], 1);
            *offset += 1;
        }
    }
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->data_id, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->control_word, 2);
    *offset += 2;
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->position, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->torque, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->velocity, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->kp, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->kd, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_JointCmdValue_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_JointCmdValue* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
                deep_robotics_bounded_copy(&value->name.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->data_id, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->control_word, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->position, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->torque, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->velocity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->kp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->kd, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_JointCmdValue_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_JointCmdValue_encode(roswasmc_bounded_2_drdds_msg_JointCmdValue const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_JointCmdValue_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_JointCmdValue_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_JointCmdValue_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_JointCmdValue_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_JointCmdValue* value)
{
    roswasmc_bounded_2_drdds_msg_JointCmdValue next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 284u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_JointCmdValue_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_0 != 0x27d6df72UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_1 != 0x24ce517bUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_2 != 0x37e5a221UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_3 != 0x9f739bf9UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_4 != 0x4d0110b3UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_5 != 0x22888b29UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_6 != 0xe8e3253aUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_7 != 0xd1ce1512UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_0 0x27d6df72UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_1 0x24ce517bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_2 0x37e5a221UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_3 0x9f739bf9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_4 0x4d0110b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_5 0x22888b29UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_6 0xe8e3253aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_7 0xd1ce1512UL

/** @brief Complete ROS2 drdds/msg/JointData value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_JointData
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t name[4];
    /** @brief Declared field data_id; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t data_id;
    /** @brief Declared field status_word; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t status_word;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    float position;
    /** @brief Declared field torque; canonical capacity is part of CODEC_IDENTITY. */
    float torque;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    float velocity;
    /** @brief Declared field motion_temp; canonical capacity is part of CODEC_IDENTITY. */
    float motion_temp;
    /** @brief Declared field driver_temp; canonical capacity is part of CODEC_IDENTITY. */
    float driver_temp;
} roswasmc_bounded_2_drdds_msg_JointData;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_MAX_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATA_CODEC_IDENTITY "UWVMROS1_269b21fc3b8c1461496b2aab41fc3354e9dc17cc9050ca7ce1962e62afce7e05"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_JointData_valid(roswasmc_bounded_2_drdds_msg_JointData const* value)
{
    if(!value)
        return 0;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->position, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->torque, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->velocity, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->motion_temp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->driver_temp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_JointData_wire_size(roswasmc_bounded_2_drdds_msg_JointData const* value)
{
    (void)value;
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 1;
        }
    }
    n += 2;
    n += 2;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_msg_JointData_write_fields(roswasmc_bounded_2_drdds_msg_JointData const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            deep_robotics_bounded_put(p + *offset, (uint64_t)value->name[i], 1);
            *offset += 1;
        }
    }
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->data_id, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->status_word, 2);
    *offset += 2;
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->position, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->torque, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->velocity, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->motion_temp, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->driver_temp, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_JointData_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_JointData* value)
{
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
                deep_robotics_bounded_copy(&value->name[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->data_id, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->status_word, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->position, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->torque, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->velocity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->motion_temp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->driver_temp, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_JointData_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_JointData_encode(roswasmc_bounded_2_drdds_msg_JointData const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_JointData_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_JointData_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_JointData_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_JointData_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_JointData* value)
{
    roswasmc_bounded_2_drdds_msg_JointData next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 28u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_JointData_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_0 != 0x8bdd3fe0UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_1 != 0x1988ca29UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_2 != 0x8d26bcc6UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_3 != 0x845a1c4eUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_4 != 0x3f444091UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_5 != 0x6a0bf07bUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_6 != 0x5b58099bUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_7 != 0x17160f5dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_0 0x8bdd3fe0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_1 0x1988ca29UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_2 0x8d26bcc6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_3 0x845a1c4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_4 0x3f444091UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_5 0x6a0bf07bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_6 0x5b58099bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_7 0x17160f5dUL

/** @brief Complete ROS2 drdds/msg/JointDataCmd value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_JointDataCmd
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t name[4];
    /** @brief Declared field data_id; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t data_id;
    /** @brief Declared field control_word; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t control_word;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    float position;
    /** @brief Declared field torque; canonical capacity is part of CODEC_IDENTITY. */
    float torque;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    float velocity;
    /** @brief Declared field kp; canonical capacity is part of CODEC_IDENTITY. */
    float kp;
    /** @brief Declared field kd; canonical capacity is part of CODEC_IDENTITY. */
    float kd;
} roswasmc_bounded_2_drdds_msg_JointDataCmd;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_MAX_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTDATACMD_CODEC_IDENTITY "UWVMROS1_c68c64167c2bd6ce84e78a37fe245c0c2bc40d4b2945a486f257222b2e1e7e0e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_JointDataCmd_valid(roswasmc_bounded_2_drdds_msg_JointDataCmd const* value)
{
    if(!value)
        return 0;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->position, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->torque, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->velocity, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->kp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->kd, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_JointDataCmd_wire_size(roswasmc_bounded_2_drdds_msg_JointDataCmd const* value)
{
    (void)value;
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 1;
        }
    }
    n += 2;
    n += 2;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_JointDataCmd_write_fields(roswasmc_bounded_2_drdds_msg_JointDataCmd const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            deep_robotics_bounded_put(p + *offset, (uint64_t)value->name[i], 1);
            *offset += 1;
        }
    }
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->data_id, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->control_word, 2);
    *offset += 2;
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->position, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->torque, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->velocity, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->kp, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->kd, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_JointDataCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_JointDataCmd* value)
{
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
                deep_robotics_bounded_copy(&value->name[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->data_id, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->control_word, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->position, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->torque, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->velocity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->kp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->kd, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_JointDataCmd_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_JointDataCmd_encode(roswasmc_bounded_2_drdds_msg_JointDataCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_JointDataCmd_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_JointDataCmd_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_JointDataCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_JointDataCmd_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_JointDataCmd* value)
{
    roswasmc_bounded_2_drdds_msg_JointDataCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 28u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_JointDataCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_0 != 0x68fae8d6UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_1 != 0xfd0a7be3UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_2 != 0xf15cdee9UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_3 != 0x144f4202UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_4 != 0x15d7ec0aUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_5 != 0x4f91f011UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_6 != 0x1d844339UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_7 != 0xf90f2d56UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_0 0x68fae8d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_1 0xfd0a7be3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_2 0xf15cdee9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_3 0x144f4202UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_4 0x15d7ec0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_5 0x4f91f011UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_6 0x1d844339UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_7 0xf90f2d56UL

/** @brief At most256 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[256];
} roswasmc_bounded_2_drdds_msg_JointValue_name_sequence;

/** @brief Complete ROS2 drdds/msg/JointValue value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_JointValue
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_JointValue_name_sequence name;
    /** @brief Declared field data_id; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t data_id;
    /** @brief Declared field status_word; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t status_word;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    float position;
    /** @brief Declared field torque; canonical capacity is part of CODEC_IDENTITY. */
    float torque;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    float velocity;
    /** @brief Declared field motion_temp; canonical capacity is part of CODEC_IDENTITY. */
    float motion_temp;
    /** @brief Declared field driver_temp; canonical capacity is part of CODEC_IDENTITY. */
    float driver_temp;
} roswasmc_bounded_2_drdds_msg_JointValue;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_MAX_WIRE_BYTES 284u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTVALUE_CODEC_IDENTITY "UWVMROS1_5c0cb9ecbc1169e7b4cf4656cd0105466cb4e9269c946339debabfd64e5824da"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_JointValue_valid(roswasmc_bounded_2_drdds_msg_JointValue const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
        }
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->position, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->torque, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->velocity, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->motion_temp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->driver_temp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_JointValue_wire_size(roswasmc_bounded_2_drdds_msg_JointValue const* value)
{
    size_t n = 0;
    n += 4;
    if(value->name.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 1;
        }
    }
    n += 2;
    n += 2;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_msg_JointValue_write_fields(roswasmc_bounded_2_drdds_msg_JointValue const* value, unsigned char* p, size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            deep_robotics_bounded_put(p + *offset, (uint64_t)value->name.data[i], 1);
            *offset += 1;
        }
    }
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->data_id, 2);
    *offset += 2;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->status_word, 2);
    *offset += 2;
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->position, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->torque, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->velocity, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->motion_temp, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->driver_temp, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_JointValue_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_JointValue* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
                deep_robotics_bounded_copy(&value->name.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->data_id, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)deep_robotics_bounded_get(p + *offset, 2);
        deep_robotics_bounded_copy(&value->status_word, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->position, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->torque, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->velocity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->motion_temp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->driver_temp, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_JointValue_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_JointValue_encode(roswasmc_bounded_2_drdds_msg_JointValue const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_JointValue_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_JointValue_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_JointValue_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_JointValue_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_JointValue* value)
{
    roswasmc_bounded_2_drdds_msg_JointValue next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 284u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_JointValue_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_0 != 0xa08bc144UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_1 != 0xd1043ff8UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_2 != 0xeafca3ceUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_3 != 0xa09a3057UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_4 != 0x6c391d11UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_5 != 0x030de8eaUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_6 != 0xc4bf8887UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_7 != 0x6961cf15UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_0 0xa08bc144UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_1 0xd1043ff8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_2 0xeafca3ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_3 0xa09a3057UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_4 0x6c391d11UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_5 0x030de8eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_6 0xc4bf8887UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_7 0x6961cf15UL

/** @brief Complete ROS2 drdds/msg/JointsDataValue value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_JointsDataValue
{
    /** @brief Declared field joints_data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_JointData joints_data[16];
} roswasmc_bounded_2_drdds_msg_JointsDataValue;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_MAX_WIRE_BYTES 448u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_MIN_WIRE_BYTES 448u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATAVALUE_CODEC_IDENTITY "UWVMROS1_e1c01b2edfac0d76f024533b582b3be527bbe70f8be7be45ea74dab31e764bd8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_JointsDataValue_valid(roswasmc_bounded_2_drdds_msg_JointsDataValue const* value)
{
    if(!value)
        return 0;
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            if(!roswasmc_bounded_2_drdds_msg_JointData_valid(&value->joints_data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_JointsDataValue_wire_size(roswasmc_bounded_2_drdds_msg_JointsDataValue const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += roswasmc_bounded_2_drdds_msg_JointData_wire_size(&value->joints_data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_JointsDataValue_write_fields(roswasmc_bounded_2_drdds_msg_JointsDataValue const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            roswasmc_bounded_2_drdds_msg_JointData_write_fields(&value->joints_data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_drdds_msg_JointsDataValue_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_drdds_msg_JointsDataValue* value)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            if(!roswasmc_bounded_2_drdds_msg_JointData_read_fields(p, n, offset, &value->joints_data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_drdds_msg_JointsDataValue_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_JointsDataValue_encode(roswasmc_bounded_2_drdds_msg_JointsDataValue const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_JointsDataValue_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_JointsDataValue_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_JointsDataValue_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_JointsDataValue_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_JointsDataValue* value)
{
    roswasmc_bounded_2_drdds_msg_JointsDataValue next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 448u || length > 448u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_JointsDataValue_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_0 != 0x8591884dUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_1 != 0xb7a961d2UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_2 != 0x17dfccc0UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_3 != 0x166dbc48UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_4 != 0x16daa902UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_5 != 0x19a2422fUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_6 != 0x08b9789dUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_7 != 0x62b062aaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_0 0x8591884dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_1 0xb7a961d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_2 0x17dfccc0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_3 0x166dbc48UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_4 0x16daa902UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_5 0x19a2422fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_6 0x08b9789dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_7 0x62b062aaUL

/** @brief Complete ROS2 drdds/msg/JointsData value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_JointsData
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_MetaType header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_JointsDataValue data;
} roswasmc_bounded_2_drdds_msg_JointsData;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_MAX_WIRE_BYTES 464u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_MIN_WIRE_BYTES 464u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATA_CODEC_IDENTITY "UWVMROS1_58eaf7ff13be07922dbb6edfb9109be96a3adad0fbd512a5f66af24dc7b4d43d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_JointsData_valid(roswasmc_bounded_2_drdds_msg_JointsData const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_MetaType_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_JointsDataValue_valid(&value->data))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_JointsData_wire_size(roswasmc_bounded_2_drdds_msg_JointsData const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_drdds_msg_MetaType_wire_size(&value->header);
    n += roswasmc_bounded_2_drdds_msg_JointsDataValue_wire_size(&value->data);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_msg_JointsData_write_fields(roswasmc_bounded_2_drdds_msg_JointsData const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_drdds_msg_MetaType_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_drdds_msg_JointsDataValue_write_fields(&value->data, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_JointsData_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_JointsData* value)
{
    if(!roswasmc_bounded_2_drdds_msg_MetaType_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_JointsDataValue_read_fields(p, n, offset, &value->data))
        return 0;
    return roswasmc_bounded_2_drdds_msg_JointsData_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_JointsData_encode(roswasmc_bounded_2_drdds_msg_JointsData const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_JointsData_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_JointsData_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_JointsData_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_JointsData_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_JointsData* value)
{
    roswasmc_bounded_2_drdds_msg_JointsData next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 464u || length > 464u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_JointsData_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_0 != 0x3751e362UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_1 != 0xeb423201UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_2 != 0x8df00730UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_3 != 0xceffc4dbUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_4 != 0x2ca261e9UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_5 != 0x07fb1f01UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_6 != 0xfbe1ada7UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_7 != 0x59e79704UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_0 0x3751e362UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_1 0xeb423201UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_2 0x8df00730UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_3 0xceffc4dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_4 0x2ca261e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_5 0x07fb1f01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_6 0xfbe1ada7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_7 0x59e79704UL

/** @brief Complete ROS2 drdds/msg/JointsDataCmdValue value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_JointsDataCmdValue
{
    /** @brief Declared field joints_data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_JointDataCmd joints_data[16];
} roswasmc_bounded_2_drdds_msg_JointsDataCmdValue;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_MAX_WIRE_BYTES 448u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_MIN_WIRE_BYTES 448u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMDVALUE_CODEC_IDENTITY "UWVMROS1_797ad7349b381083eafb361a8a7d4f28d64c8f3a1ee5719a3008d687893ab016"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_valid(roswasmc_bounded_2_drdds_msg_JointsDataCmdValue const* value)
{
    if(!value)
        return 0;
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            if(!roswasmc_bounded_2_drdds_msg_JointDataCmd_valid(&value->joints_data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_wire_size(roswasmc_bounded_2_drdds_msg_JointsDataCmdValue const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += roswasmc_bounded_2_drdds_msg_JointDataCmd_wire_size(&value->joints_data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_write_fields(roswasmc_bounded_2_drdds_msg_JointsDataCmdValue const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            roswasmc_bounded_2_drdds_msg_JointDataCmd_write_fields(&value->joints_data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_drdds_msg_JointsDataCmdValue* value)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            if(!roswasmc_bounded_2_drdds_msg_JointDataCmd_read_fields(p, n, offset, &value->joints_data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_encode(roswasmc_bounded_2_drdds_msg_JointsDataCmdValue const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_JointsDataCmdValue* value)
{
    roswasmc_bounded_2_drdds_msg_JointsDataCmdValue next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 448u || length > 448u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_0 != 0xc79f6681UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_1 != 0xb7011f73UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_2 != 0xa202a8ccUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_3 != 0xea21e135UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_4 != 0xb34e5633UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_5 != 0x7af21d18UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_6 != 0x6b50f666UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_7 != 0x06a888ccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_0 0xc79f6681UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_1 0xb7011f73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_2 0xa202a8ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_3 0xea21e135UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_4 0xb34e5633UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_5 0x7af21d18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_6 0x6b50f666UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_7 0x06a888ccUL

/** @brief Complete ROS2 drdds/msg/JointsDataCmd value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_JointsDataCmd
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_MetaType header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_JointsDataCmdValue data;
} roswasmc_bounded_2_drdds_msg_JointsDataCmd;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_MAX_WIRE_BYTES 464u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_MIN_WIRE_BYTES 464u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_JOINTSDATACMD_CODEC_IDENTITY "UWVMROS1_5b1676cb4fbfd6970756ce6221ca6abf1911bd7e8108146fd9afccf62180bb45"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_JointsDataCmd_valid(roswasmc_bounded_2_drdds_msg_JointsDataCmd const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_MetaType_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_valid(&value->data))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_JointsDataCmd_wire_size(roswasmc_bounded_2_drdds_msg_JointsDataCmd const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_drdds_msg_MetaType_wire_size(&value->header);
    n += roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_wire_size(&value->data);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_JointsDataCmd_write_fields(roswasmc_bounded_2_drdds_msg_JointsDataCmd const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_drdds_msg_MetaType_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_write_fields(&value->data, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_JointsDataCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_JointsDataCmd* value)
{
    if(!roswasmc_bounded_2_drdds_msg_MetaType_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_JointsDataCmdValue_read_fields(p, n, offset, &value->data))
        return 0;
    return roswasmc_bounded_2_drdds_msg_JointsDataCmd_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_JointsDataCmd_encode(roswasmc_bounded_2_drdds_msg_JointsDataCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_JointsDataCmd_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_JointsDataCmd_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_JointsDataCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_JointsDataCmd_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_JointsDataCmd* value)
{
    roswasmc_bounded_2_drdds_msg_JointsDataCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 464u || length > 464u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_JointsDataCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 != 0xf89deb28UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 != 0x495e9f85UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 != 0x618c129eUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 != 0x03e5d971UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 != 0x0c3f912aUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 != 0xd9dc7366UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 != 0x13b329d5UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 != 0xe7746562UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 0xf89deb28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 0x495e9f85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 0x618c129eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 0x03e5d971UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 0x0c3f912aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 0xd9dc7366UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 0x13b329d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 0xe7746562UL

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

# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    if(value->frame_id.size > 128u || !deep_robotics_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_std_msgs_msg_Header_write_fields(roswasmc_bounded_2_std_msgs_msg_Header const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    deep_robotics_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    deep_robotics_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_std_msgs_msg_Header_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->frame_id.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 128u || value->frame_id.size > n - *offset)
        return 0;
    deep_robotics_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_0 != 0x5e44bb6eUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_1 != 0xef3b440dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_2 != 0x9327bf34UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_3 != 0xb1340f74UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_4 != 0xc805437fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_5 != 0xcdb41308UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_6 != 0x8d51b60dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_7 != 0x4266adbeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_0 0x5e44bb6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_1 0xef3b440dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_2 0x9327bf34UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_3 0xb1340f74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_4 0xc805437fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_5 0xcdb41308UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_6 0x8d51b60dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_7 0x4266adbeUL

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

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_CODEC_IDENTITY "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
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
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->x, 8);
        deep_robotics_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->y, 8);
        deep_robotics_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->z, 8);
        deep_robotics_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
        deep_robotics_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
        deep_robotics_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
        deep_robotics_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_0 != 0x89015adcUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_1 != 0x504325b4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_2 != 0x38f41382UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_3 != 0x47969dc7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_4 != 0x929584a9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_5 != 0xde4042d7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_6 != 0x521e1fc7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_7 != 0x31eb7e4fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_0 0x89015adcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_1 0x504325b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_2 0x38f41382UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_3 0x47969dc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_4 0x929584a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_5 0xde4042d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_6 0x521e1fc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_7 0x31eb7e4fUL

/** @brief Complete ROS2 geometry_msgs/msg/Twist value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Twist
{
    /** @brief Declared field linear; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 linear;
    /** @brief Declared field angular; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 angular;
} roswasmc_bounded_2_geometry_msgs_msg_Twist;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_CODEC_IDENTITY "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
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
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->linear);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->angular);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->linear, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->angular, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->linear))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->angular))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Twist next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 != 0xad7c44d9UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 != 0xea7e5747UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 != 0x5efee0e4UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 != 0x4da288a8UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 != 0x9914f1b9UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 != 0x9e3bb4aeUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 != 0xd7f8b2b7UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 != 0x1983023fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 0xad7c44d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 0xea7e5747UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 0x5efee0e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 0x4da288a8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 0x9914f1b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 0x9e3bb4aeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 0xd7f8b2b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 0x1983023fUL

/** @brief UTF-8 byte storage for sensor_msgs/msg/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
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

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 6044u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_81135016cfa64b7f2845d6090ce9f70691df1472ab66993c7d98b2a79399907f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 64u || !deep_robotics_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
                return 0;
        }
    }
    if(value->position.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            {
                uint64_t bits;
                deep_robotics_bounded_copy(&bits, &value->position.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->velocity.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            {
                uint64_t bits;
                deep_robotics_bounded_copy(&bits, &value->velocity.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->effort.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                deep_robotics_bounded_copy(&bits, &value->effort.data[i], 8);
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
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 4 + value->name.data[i].size;
        }
    }
    n += 4;
    if(value->position.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocity.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 64u)
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
static inline void
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    deep_robotics_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            deep_robotics_bounded_put(p + *offset, value->name.data[i].size, 4);
            *offset += 4;
            deep_robotics_bounded_copy(p + *offset, value->name.data[i].data, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    deep_robotics_bounded_put(p + *offset, value->position.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            {
                uint64_t bits;
                deep_robotics_bounded_copy(&bits, &value->position.data[i], 8);
                deep_robotics_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    deep_robotics_bounded_put(p + *offset, value->velocity.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            {
                uint64_t bits;
                deep_robotics_bounded_copy(&bits, &value->velocity.data[i], 8);
                deep_robotics_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    deep_robotics_bounded_put(p + *offset, value->effort.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                deep_robotics_bounded_copy(&bits, &value->effort.data[i], 8);
                deep_robotics_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->name.data[i].size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->name.data[i].size > 64u || value->name.data[i].size > n - *offset)
                return 0;
            deep_robotics_bounded_copy(value->name.data[i].data, p + *offset, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->position.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->position.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
                deep_robotics_bounded_copy(&value->position.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocity.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocity.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
                deep_robotics_bounded_copy(&value->velocity.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->effort.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->effort.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
                deep_robotics_bounded_copy(&value->effort.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_JointState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 6044u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_0 != 0x30d9534cUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_1 != 0x5f1418abUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_2 != 0x731c5422UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_3 != 0xab1c2d51UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_4 != 0xdee29516UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_5 != 0x5a79ed8cUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_6 != 0x2d30fd41UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_7 != 0x54b19c6fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_0 0x30d9534cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_1 0x5f1418abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_2 0x731c5422UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_3 0xab1c2d51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_4 0xdee29516UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_5 0x5a79ed8cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_6 0x2d30fd41UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_7 0x54b19c6fUL

/** @brief UTF-8 byte storage for drdds/msg/RobotStatus.robot; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_drdds_msg_RobotStatus_robot_text;

/** @brief UTF-8 byte storage for drdds/msg/RobotStatus.command_source; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_drdds_msg_RobotStatus_command_source_text;

/** @brief UTF-8 byte storage for drdds/msg/RobotStatus.current_state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_drdds_msg_RobotStatus_current_state_text;

/** @brief UTF-8 byte storage for drdds/msg/RobotStatus.requested_state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_drdds_msg_RobotStatus_requested_state_text;

/** @brief Complete ROS2 drdds/msg/RobotStatus value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_RobotStatus
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field robot; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_RobotStatus_robot_text robot;
    /** @brief Declared field command_source; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_RobotStatus_command_source_text command_source;
    /** @brief Declared field current_state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_RobotStatus_current_state_text current_state;
    /** @brief Declared field current_state_id; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t current_state_id;
    /** @brief Declared field requested_state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_RobotStatus_requested_state_text requested_state;
    /** @brief Declared field requested_state_id; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t requested_state_id;
    /** @brief Declared field safety_mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t safety_mode;
    /** @brief Declared field command; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Twist command;
    /** @brief Declared field command_timed_out; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t command_timed_out;
    /** @brief Declared field rejected_commands; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t rejected_commands;
    /** @brief Declared field command_updates; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t command_updates;
    /** @brief Declared field joint_stamp; canonical capacity is part of CODEC_IDENTITY. */
    double joint_stamp;
    /** @brief Declared field imu_stamp; canonical capacity is part of CODEC_IDENTITY. */
    double imu_stamp;
    /** @brief Declared field telemetry_fresh; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t telemetry_fresh;
    /** @brief Declared field joints; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState joints;
    /** @brief Declared field base_rpy; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 base_rpy;
    /** @brief Declared field base_angular_velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 base_angular_velocity;
} roswasmc_bounded_2_drdds_msg_RobotStatus;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_MAX_WIRE_BYTES 6845u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_MIN_WIRE_BYTES 189u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_ROBOTSTATUS_CODEC_IDENTITY "UWVMROS1_aa90e870c49613a133808e9eade2720e131e77b95138c0a5efe47e1e3cb052ae"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_RobotStatus_valid(roswasmc_bounded_2_drdds_msg_RobotStatus const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->robot.size > 128u || !deep_robotics_bounded_utf8(value->robot.data, value->robot.size))
        return 0;
    if(value->command_source.size > 128u || !deep_robotics_bounded_utf8(value->command_source.data, value->command_source.size))
        return 0;
    if(value->current_state.size > 128u || !deep_robotics_bounded_utf8(value->current_state.data, value->current_state.size))
        return 0;
    if(value->requested_state.size > 128u || !deep_robotics_bounded_utf8(value->requested_state.data, value->requested_state.size))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->command))
        return 0;
    if(value->command_timed_out > 1)
        return 0;
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->joint_stamp, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->imu_stamp, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    if(value->telemetry_fresh > 1)
        return 0;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(&value->joints))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->base_rpy))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->base_angular_velocity))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_RobotStatus_wire_size(roswasmc_bounded_2_drdds_msg_RobotStatus const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4 + value->robot.size;
    n += 4 + value->command_source.size;
    n += 4 + value->current_state.size;
    n += 1;
    n += 4 + value->requested_state.size;
    n += 1;
    n += 1;
    n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->command);
    n += 1;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 1;
    n += roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(&value->joints);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->base_rpy);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->base_angular_velocity);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_RobotStatus_write_fields(roswasmc_bounded_2_drdds_msg_RobotStatus const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    deep_robotics_bounded_put(p + *offset, value->robot.size, 4);
    *offset += 4;
    deep_robotics_bounded_copy(p + *offset, value->robot.data, value->robot.size);
    *offset += value->robot.size;
    deep_robotics_bounded_put(p + *offset, value->command_source.size, 4);
    *offset += 4;
    deep_robotics_bounded_copy(p + *offset, value->command_source.data, value->command_source.size);
    *offset += value->command_source.size;
    deep_robotics_bounded_put(p + *offset, value->current_state.size, 4);
    *offset += 4;
    deep_robotics_bounded_copy(p + *offset, value->current_state.data, value->current_state.size);
    *offset += value->current_state.size;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->current_state_id, 1);
    *offset += 1;
    deep_robotics_bounded_put(p + *offset, value->requested_state.size, 4);
    *offset += 4;
    deep_robotics_bounded_copy(p + *offset, value->requested_state.data, value->requested_state.size);
    *offset += value->requested_state.size;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->requested_state_id, 1);
    *offset += 1;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->safety_mode, 1);
    *offset += 1;
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->command, p, offset);
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->command_timed_out, 1);
    *offset += 1;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->rejected_commands, 8);
    *offset += 8;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->command_updates, 8);
    *offset += 8;
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->joint_stamp, 8);
        deep_robotics_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        deep_robotics_bounded_copy(&bits, &value->imu_stamp, 8);
        deep_robotics_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->telemetry_fresh, 1);
    *offset += 1;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(&value->joints, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->base_rpy, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->base_angular_velocity, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_RobotStatus_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_RobotStatus* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->robot.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->robot.size > 128u || value->robot.size > n - *offset)
        return 0;
    deep_robotics_bounded_copy(value->robot.data, p + *offset, value->robot.size);
    *offset += value->robot.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->command_source.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->command_source.size > 128u || value->command_source.size > n - *offset)
        return 0;
    deep_robotics_bounded_copy(value->command_source.data, p + *offset, value->command_source.size);
    *offset += value->command_source.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->current_state.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->current_state.size > 128u || value->current_state.size > n - *offset)
        return 0;
    deep_robotics_bounded_copy(value->current_state.data, p + *offset, value->current_state.size);
    *offset += value->current_state.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->current_state_id, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->requested_state.size = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->requested_state.size > 128u || value->requested_state.size > n - *offset)
        return 0;
    deep_robotics_bounded_copy(value->requested_state.data, p + *offset, value->requested_state.size);
    *offset += value->requested_state.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->requested_state_id, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->safety_mode, &bits, 1);
    }
    *offset += 1;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->command))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->command_timed_out, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
        deep_robotics_bounded_copy(&value->rejected_commands, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
        deep_robotics_bounded_copy(&value->command_updates, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
        deep_robotics_bounded_copy(&value->joint_stamp, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)deep_robotics_bounded_get(p + *offset, 8);
        deep_robotics_bounded_copy(&value->imu_stamp, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)deep_robotics_bounded_get(p + *offset, 1);
        deep_robotics_bounded_copy(&value->telemetry_fresh, &bits, 1);
    }
    *offset += 1;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(p, n, offset, &value->joints))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->base_rpy))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->base_angular_velocity))
        return 0;
    return roswasmc_bounded_2_drdds_msg_RobotStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_RobotStatus_encode(roswasmc_bounded_2_drdds_msg_RobotStatus const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_RobotStatus_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_RobotStatus_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_RobotStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_RobotStatus_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_RobotStatus* value)
{
    roswasmc_bounded_2_drdds_msg_RobotStatus next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 189u || length > 6845u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_RobotStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_0 != 0x9e447989UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_1 != 0xa4e95449UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_2 != 0x5f86e87fUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_3 != 0xc0fd0330UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_4 != 0x2b41ca17UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_5 != 0x7e6e52f5UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_6 != 0x8860bdb2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_7 != 0x8c17aeedUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_0 0x9e447989UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_1 0xa4e95449UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_2 0x5f86e87fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_3 0xc0fd0330UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_4 0x2b41ca17UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_5 0x7e6e52f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_6 0x8860bdb2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_7 0x8c17aeedUL

/** @brief Complete ROS2 drdds/msg/StdMsgFloat32 value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_StdMsgFloat32
{
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    float value;
} roswasmc_bounded_2_drdds_msg_StdMsgFloat32;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGFLOAT32_CODEC_IDENTITY "UWVMROS1_60c4d2a6c37bc75722023dbd51c1796b1330023c2c773bd4da25aebb4d665c33"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_StdMsgFloat32_valid(roswasmc_bounded_2_drdds_msg_StdMsgFloat32 const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->value, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_StdMsgFloat32_wire_size(roswasmc_bounded_2_drdds_msg_StdMsgFloat32 const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_StdMsgFloat32_write_fields(roswasmc_bounded_2_drdds_msg_StdMsgFloat32 const* value, unsigned char* p, size_t* offset)
{
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->value, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_StdMsgFloat32_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_StdMsgFloat32* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_StdMsgFloat32_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_StdMsgFloat32_encode(roswasmc_bounded_2_drdds_msg_StdMsgFloat32 const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_StdMsgFloat32_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_StdMsgFloat32_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_StdMsgFloat32_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_StdMsgFloat32_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_StdMsgFloat32* value)
{
    roswasmc_bounded_2_drdds_msg_StdMsgFloat32 next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_StdMsgFloat32_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_0 != 0x53b6809cUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_1 != 0xaf684236UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_2 != 0x73a2489aUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_3 != 0xd9269118UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_4 != 0x49a7175eUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_5 != 0x73cb4b2aUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_6 != 0x4b004cf5UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_7 != 0x4d7b106dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_0 0x53b6809cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_1 0xaf684236UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_2 0x73a2489aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_3 0xd9269118UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_4 0x49a7175eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_5 0x73cb4b2aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_6 0x4b004cf5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_7 0x4d7b106dUL

/** @brief Complete ROS2 drdds/msg/StdMsgInt32 value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_StdMsgInt32
{
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_drdds_msg_StdMsgInt32;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDMSGINT32_CODEC_IDENTITY "UWVMROS1_460694ceb9e0e29101e97b5758a3171e02b7830565fec83358ee7fa6157d42b1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_StdMsgInt32_valid(roswasmc_bounded_2_drdds_msg_StdMsgInt32 const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_StdMsgInt32_wire_size(roswasmc_bounded_2_drdds_msg_StdMsgInt32 const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_drdds_msg_StdMsgInt32_write_fields(roswasmc_bounded_2_drdds_msg_StdMsgInt32 const* value, unsigned char* p, size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_StdMsgInt32_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_StdMsgInt32* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_StdMsgInt32_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_StdMsgInt32_encode(roswasmc_bounded_2_drdds_msg_StdMsgInt32 const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_StdMsgInt32_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_StdMsgInt32_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_StdMsgInt32_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_StdMsgInt32_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_StdMsgInt32* value)
{
    roswasmc_bounded_2_drdds_msg_StdMsgInt32 next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_StdMsgInt32_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_0 != 0xd0e2d0f7UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_1 != 0xcd3bde99UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_2 != 0x79e59daaUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_3 != 0x805b6a19UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_4 != 0x59408a70UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_5 != 0xfecb3412UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_6 != 0x16a692a7UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_7 != 0x95cc4ee8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_0 0xd0e2d0f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_1 0xcd3bde99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_2 0x79e59daaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_3 0x805b6a19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_4 0x59408a70UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_5 0xfecb3412UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_6 0x16a692a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_7 0x95cc4ee8UL

/** @brief Complete ROS2 drdds/msg/StdStatus value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_StdStatus
{
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t state;
    /** @brief Declared field error_code; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t error_code;
} roswasmc_bounded_2_drdds_msg_StdStatus;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STDSTATUS_CODEC_IDENTITY "UWVMROS1_4d9ff460d62c4251ecda42a2637156e54b5e9adcce2ff442299c04968d6a2b28"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_StdStatus_valid(roswasmc_bounded_2_drdds_msg_StdStatus const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_StdStatus_wire_size(roswasmc_bounded_2_drdds_msg_StdStatus const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_msg_StdStatus_write_fields(roswasmc_bounded_2_drdds_msg_StdStatus const* value, unsigned char* p, size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->state, 4);
    *offset += 4;
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->error_code, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_StdStatus_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_StdStatus* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->state, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->error_code, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_StdStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_StdStatus_encode(roswasmc_bounded_2_drdds_msg_StdStatus const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_StdStatus_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_StdStatus_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_StdStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_StdStatus_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_StdStatus* value)
{
    roswasmc_bounded_2_drdds_msg_StdStatus next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_StdStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_0 != 0x69547303UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_1 != 0x53584b67UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_2 != 0x626975e3UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_3 != 0xa030bd6dUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_4 != 0xd948cdc7UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_5 != 0xb762e0deUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_6 != 0x710cb304UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_7 != 0xb7f2a467UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_0 0x69547303UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_1 0x53584b67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_2 0x626975e3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_3 0xa030bd6dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_4 0xd948cdc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_5 0xb762e0deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_6 0x710cb304UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_7 0xb7f2a467UL

/** @brief Complete ROS2 drdds/msg/SteerValue value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_SteerValue
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    float z;
    /** @brief Declared field roll; canonical capacity is part of CODEC_IDENTITY. */
    float roll;
    /** @brief Declared field pitch; canonical capacity is part of CODEC_IDENTITY. */
    float pitch;
    /** @brief Declared field yaw; canonical capacity is part of CODEC_IDENTITY. */
    float yaw;
} roswasmc_bounded_2_drdds_msg_SteerValue;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STEERVALUE_CODEC_IDENTITY "UWVMROS1_10007d7ed0f14ea52138dba2c3dfee590070ed8f2c0e5f48adab2486c371a236"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_SteerValue_valid(roswasmc_bounded_2_drdds_msg_SteerValue const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->z, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->roll, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->pitch, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->yaw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_SteerValue_wire_size(roswasmc_bounded_2_drdds_msg_SteerValue const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_msg_SteerValue_write_fields(roswasmc_bounded_2_drdds_msg_SteerValue const* value, unsigned char* p, size_t* offset)
{
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->x, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->y, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->z, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->roll, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->pitch, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        deep_robotics_bounded_copy(&bits, &value->yaw, 4);
        deep_robotics_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_drdds_msg_SteerValue_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_SteerValue* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->z, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->roll, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->pitch, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->yaw, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_msg_SteerValue_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_drdds_msg_SteerValue_encode(roswasmc_bounded_2_drdds_msg_SteerValue const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_SteerValue_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_SteerValue_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_SteerValue_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_SteerValue_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_SteerValue* value)
{
    roswasmc_bounded_2_drdds_msg_SteerValue next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_SteerValue_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_0 != 0xee193d8eUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_1 != 0xc09146eaUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_2 != 0x37797936UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_3 != 0x2c5594d8UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_4 != 0xaa464413UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_5 != 0xc7e6f44cUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_6 != 0x4965f1c5UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_7 != 0x5f222c31UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_0 0xee193d8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_1 0xc09146eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_2 0x37797936UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_3 0x2c5594d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_4 0xaa464413UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_5 0xc7e6f44cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_6 0x4965f1c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_7 0x5f222c31UL

/** @brief Complete ROS2 drdds/msg/Steer value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_msg_Steer
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_MetaType header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_drdds_msg_SteerValue data;
} roswasmc_bounded_2_drdds_msg_Steer;

# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_DRDDS_MSG_STEER_CODEC_IDENTITY "UWVMROS1_0749b852b4689e1d6df3fe333e91280ae87065f16267a255e548d73ed9e14793"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_msg_Steer_valid(roswasmc_bounded_2_drdds_msg_Steer const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_MetaType_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_SteerValue_valid(&value->data))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_msg_Steer_wire_size(roswasmc_bounded_2_drdds_msg_Steer const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_drdds_msg_MetaType_wire_size(&value->header);
    n += roswasmc_bounded_2_drdds_msg_SteerValue_wire_size(&value->data);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_msg_Steer_write_fields(roswasmc_bounded_2_drdds_msg_Steer const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_drdds_msg_MetaType_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_drdds_msg_SteerValue_write_fields(&value->data, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_drdds_msg_Steer_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_drdds_msg_Steer* value)
{
    if(!roswasmc_bounded_2_drdds_msg_MetaType_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_drdds_msg_SteerValue_read_fields(p, n, offset, &value->data))
        return 0;
    return roswasmc_bounded_2_drdds_msg_Steer_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_Steer_encode(roswasmc_bounded_2_drdds_msg_Steer const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_msg_Steer_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_msg_Steer_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_msg_Steer_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_drdds_msg_Steer_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_msg_Steer* value)
{
    roswasmc_bounded_2_drdds_msg_Steer next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_msg_Steer_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_0 != 0xca0b4643UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_1 != 0xd5b71d93UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_2 != 0x3c20ddffUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_3 != 0xd1a21331UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_4 != 0xe45c2d8cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_5 != 0x23ed0040UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_6 != 0xe800e9bcUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_7 != 0xa5d7773aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_0 0xca0b4643UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_1 0xd5b71d93UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_2 0x3c20ddffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_3 0xd1a21331UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_4 0xe45c2d8cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_5 0x23ed0040UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_6 0xe800e9bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_7 0xa5d7773aUL

/** @brief Complete ROS2 drdds/srv/StdSrvInt32_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request
{
    /** @brief Declared field command; canonical capacity is part of CODEC_IDENTITY. */
    int32_t command;
} roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request;

# define ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_REQUEST_CODEC_IDENTITY "UWVMROS1_00be6642e848f5cb36a34038277cf0002cdd2a76de8384ac17e11cd101fcd25e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_valid(roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_wire_size(roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_write_fields(roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->command, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->command, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_encode(roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request* value)
{
    roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_srv_StdSrvInt32_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_0 != 0x559c2602UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_1 != 0x215a533eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_2 != 0x2ff1f680UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_3 != 0x6a779695UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_4 != 0x9d013b3aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_5 != 0xf19c4148UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_6 != 0xb34f0e33UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_7 != 0xba207d04UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_0 0x559c2602UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_1 0x215a533eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_2 0x2ff1f680UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_3 0x6a779695UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_4 0x9d013b3aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_5 0xf19c4148UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_6 0xb34f0e33UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_7 0xba207d04UL

/** @brief Complete ROS2 drdds/srv/StdSrvInt32_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response
{
    /** @brief Declared field result; canonical capacity is part of CODEC_IDENTITY. */
    int32_t result;
} roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response;

# define ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_DRDDS_SRV_STDSRVINT32_RESPONSE_CODEC_IDENTITY "UWVMROS1_a264c039c6b47e96c72615b8eba30d74b4bba736dabe5d52457f173930a9dcb4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_valid(roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_wire_size(roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_write_fields(roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    deep_robotics_bounded_put(p + *offset, (uint64_t)value->result, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)deep_robotics_bounded_get(p + *offset, 4);
        deep_robotics_bounded_copy(&value->result, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_encode(roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_valid(value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    n = roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_wire_size(value);
    if(capacity < n)
        return DEEP_ROBOTICS_BOUNDED_TOO_LARGE;
    if((n && !output) || deep_robotics_bounded_overlap(value, sizeof *value, output, n) || deep_robotics_bounded_overlap(length, sizeof *length, output, n) ||
       deep_robotics_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_decode(void const* input, size_t length, roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response* value)
{
    roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || deep_robotics_bounded_overlap(value, sizeof *value, input, length))
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_drdds_srv_StdSrvInt32_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return DEEP_ROBOTICS_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef DEEP_ROBOTICS_BOUNDED_ASSERT
#endif
