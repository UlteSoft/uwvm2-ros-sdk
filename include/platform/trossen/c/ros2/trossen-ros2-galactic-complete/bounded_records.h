/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_DA1C690B033E25158B8820DF0227CED1A74462AF501159C8B7FE899C6C780C8C
#define UWVM_ROS_BOUNDED_RECORDS_DA1C690B033E25158B8820DF0227CED1A74462AF501159C8B7FE899C6C780C8C
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

/** @brief Copy exact primitive/string bytes; compiler intrinsics avoid byte-at-a-time copies. */
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
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_0 != 0x6abde1d2UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_1 != 0x53c111a0UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_2 != 0x8de83f41UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_3 != 0xc78569f8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_4 != 0xb61ba2f6UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_5 != 0x5f913a5aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_6 != 0xc3272a5aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_7 != 0xac7bb3feUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_0 0x6abde1d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_1 0x53c111a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_2 0x8de83f41UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_3 0xc78569f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_4 0xb61ba2f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_5 0x5f913a5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_6 0xc3272a5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_7 0xac7bb3feUL

/** @brief Complete ROS2 builtin_interfaces/msg/Duration value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Duration
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Duration;

# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_CODEC_IDENTITY "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
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
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Duration next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
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
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_0 != 0x9de5dbbbUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_1 != 0x805721baUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_2 != 0x1f6cbbb8UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_3 != 0x5716cd7dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_4 != 0x814ca33eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_5 != 0x64824c78UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_6 != 0x7a19a8baUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_7 != 0x5c35c8cdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_0 0x9de5dbbbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_1 0x805721baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_2 0x1f6cbbb8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_3 0x5716cd7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_4 0x814ca33eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_5 0x64824c78UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_6 0x7a19a8baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_7 0x5c35c8cdUL

/** @brief Complete ROS2 interbotix_xs_msgs/msg/ArmJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy
{
    /** @brief Declared field ee_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_x_cmd;
    /** @brief Declared field ee_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_y_cmd;
    /** @brief Declared field ee_z_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_z_cmd;
    /** @brief Declared field ee_roll_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_roll_cmd;
    /** @brief Declared field ee_pitch_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_pitch_cmd;
    /** @brief Declared field waist_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t waist_cmd;
    /** @brief Declared field gripper_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_cmd;
    /** @brief Declared field pose_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pose_cmd;
    /** @brief Declared field speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_cmd;
    /** @brief Declared field speed_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_toggle_cmd;
    /** @brief Declared field gripper_pwm_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_pwm_cmd;
    /** @brief Declared field torque_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t torque_cmd;
} roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_CODEC_IDENTITY "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f"
/** @brief Original scalar constant EE_X_INC=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_X_INC INT32_C(1)
/** @brief Original scalar constant EE_X_DEC=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_X_DEC INT32_C(2)
/** @brief Original scalar constant EE_Y_INC=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_Y_INC INT32_C(3)
/** @brief Original scalar constant EE_Y_DEC=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_Y_DEC INT32_C(4)
/** @brief Original scalar constant EE_Z_INC=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_Z_INC INT32_C(5)
/** @brief Original scalar constant EE_Z_DEC=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_Z_DEC INT32_C(6)
/** @brief Original scalar constant EE_ROLL_CCW=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_ROLL_CCW INT32_C(7)
/** @brief Original scalar constant EE_ROLL_CW=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_ROLL_CW INT32_C(8)
/** @brief Original scalar constant EE_PITCH_UP=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_PITCH_UP INT32_C(9)
/** @brief Original scalar constant EE_PITCH_DOWN=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_EE_PITCH_DOWN INT32_C(10)
/** @brief Original scalar constant WAIST_CCW=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_WAIST_CCW INT32_C(11)
/** @brief Original scalar constant WAIST_CW=12; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_WAIST_CW INT32_C(12)
/** @brief Original scalar constant GRIPPER_RELEASE=13; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_GRIPPER_RELEASE INT32_C(13)
/** @brief Original scalar constant GRIPPER_GRASP=14; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_GRIPPER_GRASP INT32_C(14)
/** @brief Original scalar constant HOME_POSE=15; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_HOME_POSE INT32_C(15)
/** @brief Original scalar constant SLEEP_POSE=16; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_SLEEP_POSE INT32_C(16)
/** @brief Original scalar constant SPEED_INC=17; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_SPEED_INC INT32_C(17)
/** @brief Original scalar constant SPEED_DEC=18; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_SPEED_DEC INT32_C(18)
/** @brief Original scalar constant SPEED_COARSE=19; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_SPEED_COARSE INT32_C(19)
/** @brief Original scalar constant SPEED_FINE=20; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_SPEED_FINE INT32_C(20)
/** @brief Original scalar constant GRIPPER_PWM_INC=21; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_GRIPPER_PWM_INC INT32_C(21)
/** @brief Original scalar constant GRIPPER_PWM_DEC=22; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_GRIPPER_PWM_DEC INT32_C(22)
/** @brief Original scalar constant TORQUE_ON=23; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_TORQUE_ON INT32_C(23)
/** @brief Original scalar constant TORQUE_OFF=24; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_ARMJOY_TORQUE_OFF INT32_C(24)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_valid(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value)
{
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
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_z_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_roll_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_pitch_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->waist_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pose_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_toggle_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_pwm_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->torque_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_x_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_y_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_z_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_roll_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_pitch_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->waist_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gripper_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pose_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gripper_pwm_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->torque_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_decode(void const* input, size_t length, roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_0 != 0x6178595bUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_1 != 0x62c2bb73UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_2 != 0xbebaf8d5UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_3 != 0x1ca9f81dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_4 != 0x9b04316eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_5 != 0x2549d88bUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_6 != 0x56c8dee9UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_7 != 0xa91425e9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_0 0x6178595bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_1 0x62c2bb73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_2 0xbebaf8d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_3 0x1ca9f81dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_4 0x9b04316eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_5 0x2549d88bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_6 0x56c8dee9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_7 0xa91425e9UL

/** @brief Complete ROS2 interbotix_xs_msgs/msg/HexJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy
{
    /** @brief Declared field world_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t world_x_cmd;
    /** @brief Declared field world_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t world_y_cmd;
    /** @brief Declared field world_yaw_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t world_yaw_cmd;
    /** @brief Declared field place_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_x_cmd;
    /** @brief Declared field place_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_y_cmd;
    /** @brief Declared field place_z_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_z_cmd;
    /** @brief Declared field place_roll_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_roll_cmd;
    /** @brief Declared field place_pitch_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_pitch_cmd;
    /** @brief Declared field pose_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pose_cmd;
    /** @brief Declared field move_type_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t move_type_cmd;
    /** @brief Declared field gait_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gait_toggle_cmd;
    /** @brief Declared field leg_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t leg_toggle_cmd;
    /** @brief Declared field stance_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t stance_cmd;
    /** @brief Declared field reboot_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t reboot_cmd;
    /** @brief Declared field set_home_pose_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t set_home_pose_cmd;
    /** @brief Declared field speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_cmd;
    /** @brief Declared field speed_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_toggle_cmd;
} roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_MAX_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_MIN_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_CODEC_IDENTITY "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d"
/** @brief Original scalar constant WORLD_X_INC=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_WORLD_X_INC INT32_C(1)
/** @brief Original scalar constant WORLD_X_DEC=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_WORLD_X_DEC INT32_C(2)
/** @brief Original scalar constant WORLD_Y_INC=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_WORLD_Y_INC INT32_C(3)
/** @brief Original scalar constant WORLD_Y_DEC=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_WORLD_Y_DEC INT32_C(4)
/** @brief Original scalar constant WORLD_YAW_CCW=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_WORLD_YAW_CCW INT32_C(5)
/** @brief Original scalar constant WORLD_YAW_CW=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_WORLD_YAW_CW INT32_C(6)
/** @brief Original scalar constant PLACE_X_INC=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_X_INC INT32_C(7)
/** @brief Original scalar constant PLACE_X_DEC=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_X_DEC INT32_C(8)
/** @brief Original scalar constant PLACE_Y_INC=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_Y_INC INT32_C(9)
/** @brief Original scalar constant PLACE_Y_DEC=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_Y_DEC INT32_C(10)
/** @brief Original scalar constant PLACE_Z_INC=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_Z_INC INT32_C(11)
/** @brief Original scalar constant PLACE_Z_DEC=12; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_Z_DEC INT32_C(12)
/** @brief Original scalar constant PLACE_ROLL_CCW=13; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_ROLL_CCW INT32_C(13)
/** @brief Original scalar constant PLACE_ROLL_CW=14; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_ROLL_CW INT32_C(14)
/** @brief Original scalar constant PLACE_PITCH_UP=15; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_PITCH_UP INT32_C(15)
/** @brief Original scalar constant PLACE_PITCH_DOWN=16; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_PLACE_PITCH_DOWN INT32_C(16)
/** @brief Original scalar constant MOVE_HEXAPOD=17; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_MOVE_HEXAPOD INT32_C(17)
/** @brief Original scalar constant MOVE_LEG=18; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_MOVE_LEG INT32_C(18)
/** @brief Original scalar constant HOME_POSE=19; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_HOME_POSE INT32_C(19)
/** @brief Original scalar constant SLEEP_POSE=20; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_SLEEP_POSE INT32_C(20)
/** @brief Original scalar constant GAIT_NEXT=21; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_GAIT_NEXT INT32_C(21)
/** @brief Original scalar constant GAIT_PREVIOUS=22; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_GAIT_PREVIOUS INT32_C(22)
/** @brief Original scalar constant LEG_NEXT=23; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_LEG_NEXT INT32_C(23)
/** @brief Original scalar constant LEG_PREVIOUS=24; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_LEG_PREVIOUS INT32_C(24)
/** @brief Original scalar constant WIDEN_STANCE=25; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_WIDEN_STANCE INT32_C(25)
/** @brief Original scalar constant NARROW_STANCE=26; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_NARROW_STANCE INT32_C(26)
/** @brief Original scalar constant REBOOT_MOTORS=27; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_REBOOT_MOTORS INT32_C(27)
/** @brief Original scalar constant SET_HOME_POSE=28; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_SET_HOME_POSE INT32_C(28)
/** @brief Original scalar constant SPEED_INC=29; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_SPEED_INC INT32_C(29)
/** @brief Original scalar constant SPEED_DEC=30; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_SPEED_DEC INT32_C(30)
/** @brief Original scalar constant SPEED_COARSE=31; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_SPEED_COARSE INT32_C(31)
/** @brief Original scalar constant SPEED_FINE=32; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_HEXJOY_SPEED_FINE INT32_C(32)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_valid(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value)
{
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
static inline void roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->world_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->world_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->world_yaw_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_z_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_roll_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_pitch_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pose_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->move_type_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gait_toggle_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->leg_toggle_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->stance_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->reboot_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->set_home_pose_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_toggle_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->world_x_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->world_y_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->world_yaw_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_x_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_y_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_z_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_roll_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_pitch_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pose_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->move_type_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gait_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->leg_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->stance_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->reboot_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->set_home_pose_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_decode(void const* input, size_t length, roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 17u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_0 != 0x45204217UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_1 != 0x8f262b12UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_2 != 0xf64e4c59UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_3 != 0x6be2c6d6UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_4 != 0xb7e431a4UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_5 != 0xcbad231fUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_6 != 0xe78d8313UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_7 != 0x7da0fb2aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_0 0x45204217UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_1 0x8f262b12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_2 0xf64e4c59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_3 0x6be2c6d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_4 0xb7e431a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_5 0xcbad231fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_6 0xe78d8313UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_7 0x7da0fb2aUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/msg/JointGroupCommand.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_name_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_cmd_sequence;

/** @brief Complete ROS2 interbotix_xs_msgs/msg/JointGroupCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_name_text name;
    /** @brief Declared field cmd; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_cmd_sequence cmd;
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_MAX_WIRE_BYTES 392u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTGROUPCOMMAND_CODEC_IDENTITY "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_valid(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->cmd.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cmd.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->cmd.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 4;
    if(value->cmd.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cmd.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, value->cmd.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->cmd.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->cmd.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand* value)
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
    value->cmd.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cmd.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->cmd.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 392u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_0 != 0x05aaeeffUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_1 != 0x1d6874ceUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_2 != 0x299c4710UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_3 != 0xb04724c0UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_4 != 0x5dfb413aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_5 != 0xa798f0beUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_6 != 0x695aaffeUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_7 != 0x17bb586bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_0 0x05aaeeffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_1 0x1d6874ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_2 0x299c4710UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_3 0xb04724c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_4 0x5dfb413aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_5 0xa798f0beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_6 0x695aaffeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_7 0x17bb586bUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/msg/JointSingleCommand.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_name_text;

/** @brief Complete ROS2 interbotix_xs_msgs/msg/JointSingleCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_name_text name;
    /** @brief Declared field cmd; canonical capacity is part of CODEC_IDENTITY. */
    float cmd;
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTSINGLECOMMAND_CODEC_IDENTITY "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_valid(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cmd, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cmd, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand* value)
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
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cmd, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_0 != 0x7df59ab9UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_1 != 0xbd4d14dfUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_2 != 0xe77408c7UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_3 != 0x417c551cUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_4 != 0xea76a3b5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_5 != 0x0ffef71fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_6 != 0x26e33867UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_7 != 0xec8e8f74UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_0 0x7df59ab9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_1 0xbd4d14dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_2 0xe77408c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_3 0x417c551cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_4 0xea76a3b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_5 0x0ffef71fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_6 0x26e33867UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_7 0xec8e8f74UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/msg/JointTemps.names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_names_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_names_text data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_names_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int32_t data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_temps_sequence;

/** @brief Complete ROS2 interbotix_xs_msgs/msg/JointTemps value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps
{
    /** @brief Declared field names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_names_sequence names;
    /** @brief Declared field temps; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_temps_sequence temps;
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_MAX_WIRE_BYTES 8712u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTEMPS_CODEC_IDENTITY "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_valid(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value)
{
    if(!value)
        return 0;
    if(value->names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->names.size; ++i)
        {
            if(value->names.data[i].size > 128u || !uwvm_bounded_utf8(value->names.data[i].data, value->names.data[i].size))
                return 0;
        }
    }
    if(value->temps.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->temps.size; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value)
{
    size_t n = 0;
    n += 4;
    if(value->names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->names.size; ++i)
        {
            n += 4 + value->names.data[i].size;
        }
    }
    n += 4;
    if(value->temps.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->temps.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->names.data[i].data, value->names.data[i].size);
            *offset += value->names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->temps.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->temps.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->temps.data[i], 4);
            *offset += 4;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->names.data[i].size > 128u || value->names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->names.data[i].data, p + *offset, value->names.data[i].size);
            *offset += value->names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->temps.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->temps.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->temps.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->temps.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_decode(void const* input, size_t length, roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8712u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
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
    if(value->frame_id.size > 128u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
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
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
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
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 128u || value->frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_0 != 0xd9b862f2UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_1 != 0xb166e8f7UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_2 != 0xe8f7fc51UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_3 != 0x77303cdaUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_4 != 0x138b8e25UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_5 != 0xf6a0d845UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_6 != 0xfe76652eUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_7 != 0xa0bb531aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_0 0xd9b862f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_1 0xb166e8f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_2 0xe8f7fc51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_3 0x77303cdaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_4 0x138b8e25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_5 0xf6a0d845UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_6 0xfe76652eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_7 0xa0bb531aUL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_positions_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_velocities_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_accelerations_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
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

# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_MAX_WIRE_BYTES 536u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_CODEC_IDENTITY "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    if(!value)
        return 0;
    if(value->positions.size > 16u)
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
    if(value->velocities.size > 16u)
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
    if(value->accelerations.size > 16u)
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
    if(value->effort.size > 16u)
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
static inline size_t
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    size_t n = 0;
    n += 4;
    if(value->positions.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocities.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->accelerations.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 16u)
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
static inline void
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
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
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->positions.size > 16u)
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
    if(value->velocities.size > 16u)
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
    if(value->accelerations.size > 16u)
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
    if(value->effort.size > 16u)
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
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 536u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_0 != 0x4b8eb3aeUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_1 != 0x7227b4e0UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_2 != 0x4165a912UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_3 != 0x96034b37UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_4 != 0xb661ca67UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_5 != 0xe0b7cfacUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_6 != 0xbe75d24aUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_7 != 0x9b2a4842UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_0 0x4b8eb3aeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_1 0x7227b4e0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_2 0x4165a912UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_3 0x96034b37UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_4 0xb661ca67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_5 0xe0b7cfacUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_6 0xbe75d24aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_7 0x9b2a4842UL

/** @brief UTF-8 byte storage for trajectory_msgs/msg/JointTrajectory.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_text;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_text data[16];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_sequence;

/** @brief At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint data[4];
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

# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MAX_WIRE_BYTES 4404u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_CODEC_IDENTITY "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 128u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->points.size > 4u)
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
static inline size_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 16u)
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
            n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->points.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_write_fields(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
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
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 128u || value->joint_names.data[i].size > n - *offset)
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
            if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->points.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 4404u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_0 != 0xda4f7d0dUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_1 != 0x449e4213UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_2 != 0x398502b4UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_3 != 0xdce54b28UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_4 != 0x86cb5729UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_5 != 0xbad15fd9UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_6 != 0x5c7e083cUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_7 != 0x9c8f61dbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_0 0xda4f7d0dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_1 0x449e4213UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_2 0x398502b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_3 0xdce54b28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_4 0x86cb5729UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_5 0xbad15fd9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_6 0x5c7e083cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_7 0x9c8f61dbUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/msg/JointTrajectoryCommand.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/msg/JointTrajectoryCommand.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_name_text;

/** @brief Complete ROS2 interbotix_xs_msgs/msg/JointTrajectoryCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_name_text name;
    /** @brief Declared field traj; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory traj;
} roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_MAX_WIRE_BYTES 4668u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_JOINTTRAJECTORYCOMMAND_CODEC_IDENTITY                                                                       \
     "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_valid(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(&value->traj))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(&value->traj);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_write_fields(&value->traj, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields(p, n, offset, &value->traj))
        return 0;
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 4668u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_0 != 0xc164cdcfUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_1 != 0x5687cb92UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_2 != 0x44120705UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_3 != 0xe673ca16UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_4 != 0x1bb5d26dUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_5 != 0x1c2aa22dUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_6 != 0x9d564ad0UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_7 != 0xef17e000UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_0 0xc164cdcfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_1 0x5687cb92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_2 0x44120705UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_3 0xe673ca16UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_4 0x1bb5d26dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_5 0x1c2aa22dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_6 0x9d564ad0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_7 0xef17e000UL

/** @brief Complete ROS2 interbotix_xs_msgs/msg/LocobotJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy
{
    /** @brief Declared field base_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    double base_x_cmd;
    /** @brief Declared field base_theta_cmd; canonical capacity is part of CODEC_IDENTITY. */
    double base_theta_cmd;
    /** @brief Declared field base_reset_odom_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t base_reset_odom_cmd;
    /** @brief Declared field pan_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pan_cmd;
    /** @brief Declared field tilt_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t tilt_cmd;
    /** @brief Declared field ee_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_x_cmd;
    /** @brief Declared field ee_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_y_cmd;
    /** @brief Declared field ee_z_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_z_cmd;
    /** @brief Declared field ee_roll_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_roll_cmd;
    /** @brief Declared field ee_pitch_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_pitch_cmd;
    /** @brief Declared field waist_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t waist_cmd;
    /** @brief Declared field gripper_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_cmd;
    /** @brief Declared field pose_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pose_cmd;
    /** @brief Declared field speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_cmd;
    /** @brief Declared field speed_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_toggle_cmd;
    /** @brief Declared field gripper_pwm_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_pwm_cmd;
} roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_MAX_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_MIN_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_CODEC_IDENTITY "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633"
/** @brief Original scalar constant RESET_ODOM=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_RESET_ODOM INT32_C(1)
/** @brief Original scalar constant PAN_CCW=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_PAN_CCW INT32_C(2)
/** @brief Original scalar constant PAN_CW=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_PAN_CW INT32_C(3)
/** @brief Original scalar constant TILT_UP=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_TILT_UP INT32_C(4)
/** @brief Original scalar constant TILT_DOWN=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_TILT_DOWN INT32_C(5)
/** @brief Original scalar constant PAN_TILT_HOME=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_PAN_TILT_HOME INT32_C(6)
/** @brief Original scalar constant EE_X_INC=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_X_INC INT32_C(7)
/** @brief Original scalar constant EE_X_DEC=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_X_DEC INT32_C(8)
/** @brief Original scalar constant EE_Y_INC=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_Y_INC INT32_C(9)
/** @brief Original scalar constant EE_Y_DEC=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_Y_DEC INT32_C(10)
/** @brief Original scalar constant EE_Z_INC=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_Z_INC INT32_C(11)
/** @brief Original scalar constant EE_Z_DEC=12; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_Z_DEC INT32_C(12)
/** @brief Original scalar constant EE_ROLL_CCW=13; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_ROLL_CCW INT32_C(13)
/** @brief Original scalar constant EE_ROLL_CW=14; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_ROLL_CW INT32_C(14)
/** @brief Original scalar constant EE_PITCH_UP=15; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_PITCH_UP INT32_C(15)
/** @brief Original scalar constant EE_PITCH_DOWN=16; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_EE_PITCH_DOWN INT32_C(16)
/** @brief Original scalar constant WAIST_CCW=17; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_WAIST_CCW INT32_C(17)
/** @brief Original scalar constant WAIST_CW=18; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_WAIST_CW INT32_C(18)
/** @brief Original scalar constant GRIPPER_RELEASE=19; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_GRIPPER_RELEASE INT32_C(19)
/** @brief Original scalar constant GRIPPER_GRASP=20; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_GRIPPER_GRASP INT32_C(20)
/** @brief Original scalar constant HOME_POSE=21; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_HOME_POSE INT32_C(21)
/** @brief Original scalar constant SLEEP_POSE=22; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_SLEEP_POSE INT32_C(22)
/** @brief Original scalar constant SPEED_INC=23; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_SPEED_INC INT32_C(23)
/** @brief Original scalar constant SPEED_DEC=24; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_SPEED_DEC INT32_C(24)
/** @brief Original scalar constant SPEED_COARSE=25; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_SPEED_COARSE INT32_C(25)
/** @brief Original scalar constant SPEED_FINE=26; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_SPEED_FINE INT32_C(26)
/** @brief Original scalar constant GRIPPER_PWM_INC=27; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_GRIPPER_PWM_INC INT32_C(27)
/** @brief Original scalar constant GRIPPER_PWM_DEC=28; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_LOCOBOTJOY_GRIPPER_PWM_DEC INT32_C(28)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_valid(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->base_x_cmd, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->base_theta_cmd, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
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
static inline void roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->base_x_cmd, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->base_theta_cmd, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->base_reset_odom_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pan_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->tilt_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_z_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_roll_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_pitch_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->waist_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pose_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_toggle_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_pwm_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->base_x_cmd, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->base_theta_cmd, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->base_reset_odom_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pan_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->tilt_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_x_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_y_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_z_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_roll_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_pitch_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->waist_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gripper_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pose_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gripper_pwm_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_decode(void const* input, size_t length, roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 30u || length > 30u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_0 != 0xbdf30bdfUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_1 != 0xda30df80UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_2 != 0x9cd5a566UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_3 != 0x2270ac22UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_4 != 0x1688444bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_5 != 0x7f8873abUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_6 != 0x67ea5d5dUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_7 != 0x7442458aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_0 0xbdf30bdfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_1 0xda30df80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_2 0x9cd5a566UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_3 0x2270ac22UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_4 0x1688444bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_5 0x7f8873abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_6 0x67ea5d5dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_7 0x7442458aUL

/** @brief Complete ROS2 interbotix_xs_msgs/msg/TurretJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy
{
    /** @brief Declared field pan_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pan_cmd;
    /** @brief Declared field tilt_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t tilt_cmd;
    /** @brief Declared field speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_cmd;
    /** @brief Declared field speed_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_toggle_cmd;
} roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_CODEC_IDENTITY "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f"
/** @brief Original scalar constant PAN_CCW=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_PAN_CCW INT32_C(1)
/** @brief Original scalar constant PAN_CW=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_PAN_CW INT32_C(2)
/** @brief Original scalar constant TILT_UP=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_TILT_UP INT32_C(3)
/** @brief Original scalar constant TILT_DOWN=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_TILT_DOWN INT32_C(4)
/** @brief Original scalar constant PAN_TILT_HOME=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_PAN_TILT_HOME INT32_C(5)
/** @brief Original scalar constant SPEED_INC=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_SPEED_INC INT32_C(6)
/** @brief Original scalar constant SPEED_DEC=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_SPEED_DEC INT32_C(7)
/** @brief Original scalar constant SPEED_COARSE=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_SPEED_COARSE INT32_C(8)
/** @brief Original scalar constant SPEED_FINE=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_MSG_TURRETJOY_SPEED_FINE INT32_C(9)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_valid(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->pan_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->tilt_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_toggle_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pan_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->tilt_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_decode(void const* input, size_t length, roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_0 != 0x46ab1138UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_1 != 0xe1dfd5caUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_2 != 0xcb8436b6UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_3 != 0x3fd2d906UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_4 != 0x3e201942UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_5 != 0x0e985950UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_6 != 0x755440a9UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_7 != 0x0865fe48UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_0 0x46ab1138UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_1 0xe1dfd5caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_2 0xcb8436b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_3 0x3fd2d906UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_4 0x3e201942UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_5 0x0e985950UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_6 0x755440a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_7 0x0865fe48UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/MotorGains_Request.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/MotorGains_Request.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_name_text;

/** @brief Complete ROS2 interbotix_xs_msgs/srv/MotorGains_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_name_text name;
    /** @brief Declared field kp_pos; canonical capacity is part of CODEC_IDENTITY. */
    int32_t kp_pos;
    /** @brief Declared field ki_pos; canonical capacity is part of CODEC_IDENTITY. */
    int32_t ki_pos;
    /** @brief Declared field kd_pos; canonical capacity is part of CODEC_IDENTITY. */
    int32_t kd_pos;
    /** @brief Declared field k1; canonical capacity is part of CODEC_IDENTITY. */
    int32_t k1;
    /** @brief Declared field k2; canonical capacity is part of CODEC_IDENTITY. */
    int32_t k2;
    /** @brief Declared field kp_vel; canonical capacity is part of CODEC_IDENTITY. */
    int32_t kp_vel;
    /** @brief Declared field ki_vel; canonical capacity is part of CODEC_IDENTITY. */
    int32_t ki_vel;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_MAX_WIRE_BYTES 292u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_MIN_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_REQUEST_CODEC_IDENTITY "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
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
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->kp_pos, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ki_pos, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->kd_pos, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->k1, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->k2, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->kp_vel, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ki_vel, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
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
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kp_pos, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ki_pos, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kd_pos, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->k1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->k2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kp_vel, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ki_vel, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 292u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_0 != 0xc0c1f3b8UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_1 != 0x20667256UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_2 != 0x9fd8caffUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_3 != 0xfed57befUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_4 != 0xdda52815UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_5 != 0xfb779a74UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_6 != 0x3780ae79UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_7 != 0x693fdf6bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_0 0xc0c1f3b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_1 0x20667256UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_2 0x9fd8caffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_3 0xfed57befUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_4 0xdda52815UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_5 0xfb779a74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_6 0x3780ae79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_7 0x693fdf6bUL

/** @brief Complete ROS2 interbotix_xs_msgs/srv/MotorGains_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS_RESPONSE_CODEC_IDENTITY                                                                          \
     "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_0 != 0x4a7671e6UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_1 != 0x0bb220bdUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_2 != 0x24c55aa6UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_3 != 0xb2e9f647UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_4 != 0x6c4bd90eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_5 != 0x4eda1347UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_6 != 0x00f0c565UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_7 != 0x81db46d9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_0 0x4a7671e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_1 0x0bb220bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_2 0x24c55aa6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_3 0xb2e9f647UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_4 0x6c4bd90eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_5 0x4eda1347UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_6 0x00f0c565UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_7 0x81db46d9UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/OperatingModes_Request.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/OperatingModes_Request.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_name_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/OperatingModes_Request.mode; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_mode_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/OperatingModes_Request.profile_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_profile_type_text;

/** @brief Complete ROS2 interbotix_xs_msgs/srv/OperatingModes_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_name_text name;
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_mode_text mode;
    /** @brief Declared field profile_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_profile_type_text profile_type;
    /** @brief Declared field profile_velocity; canonical capacity is part of CODEC_IDENTITY. */
    int32_t profile_velocity;
    /** @brief Declared field profile_acceleration; canonical capacity is part of CODEC_IDENTITY. */
    int32_t profile_acceleration;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_MAX_WIRE_BYTES 536u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_REQUEST_CODEC_IDENTITY                                                                       \
     "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->mode.size > 128u || !uwvm_bounded_utf8(value->mode.data, value->mode.size))
        return 0;
    if(value->profile_type.size > 128u || !uwvm_bounded_utf8(value->profile_type.data, value->profile_type.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 4 + value->mode.size;
    n += 4 + value->profile_type.size;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, value->mode.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->mode.data, value->mode.size);
    *offset += value->mode.size;
    uwvm_bounded_put(p + *offset, value->profile_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->profile_type.data, value->profile_type.size);
    *offset += value->profile_type.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->profile_velocity, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->profile_acceleration, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
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
    value->mode.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->mode.size > 128u || value->mode.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->mode.data, p + *offset, value->mode.size);
    *offset += value->mode.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->profile_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->profile_type.size > 128u || value->profile_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->profile_type.data, p + *offset, value->profile_type.size);
    *offset += value->profile_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->profile_velocity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->profile_acceleration, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 536u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_0 != 0x136c680fUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_1 != 0x8f10e616UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_2 != 0x80498326UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_3 != 0xbf6e2d7bUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_4 != 0x31ab238aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_5 != 0x5070e41dUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_6 != 0xdb78d54cUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_7 != 0x2d22dd9cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_0 0x136c680fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_1 0x8f10e616UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_2 0x80498326UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_3 0xbf6e2d7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_4 0x31ab238aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_5 0x5070e41dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_6 0xdb78d54cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_7 0x2d22dd9cUL

/** @brief Complete ROS2 interbotix_xs_msgs/srv/OperatingModes_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES_RESPONSE_CODEC_IDENTITY                                                                      \
     "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_write_fields(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value,
    unsigned char* p,
    size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_0 != 0xf8e96ffdUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_1 != 0x5ad6fb42UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_2 != 0x7def2b28UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_3 != 0x8f27ad5fUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_4 != 0xf044cff7UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_5 != 0x903a9792UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_6 != 0x1db2a512UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_7 != 0xa329ea18UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_0 0xf8e96ffdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_1 0x5ad6fb42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_2 0x7def2b28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_3 0x8f27ad5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_4 0xf044cff7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_5 0x903a9792UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_6 0x1db2a512UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_7 0xa329ea18UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/Reboot_Request.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/Reboot_Request.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_name_text;

/** @brief Complete ROS2 interbotix_xs_msgs/srv/Reboot_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_name_text name;
    /** @brief Declared field enable; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t enable;
    /** @brief Declared field smart_reboot; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t smart_reboot;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_MAX_WIRE_BYTES 266u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_MIN_WIRE_BYTES 10u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_REQUEST_CODEC_IDENTITY "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->enable > 1)
        return 0;
    if(value->smart_reboot > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->enable, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->smart_reboot, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->enable, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->smart_reboot, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 10u || length > 266u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_0 != 0xe980b4a5UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_1 != 0x41ff6dbaUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_2 != 0xb1b731d6UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_3 != 0x0b5e77dfUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_4 != 0xffea4bc2UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_5 != 0xc882b860UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_6 != 0x9fff198fUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_7 != 0x0e1efac5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_0 0xe980b4a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_1 0x41ff6dbaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_2 0xb1b731d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_3 0x0b5e77dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_4 0xffea4bc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_5 0xc882b860UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_6 0x9fff198fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_7 0x0e1efac5UL

/** @brief Complete ROS2 interbotix_xs_msgs/srv/Reboot_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT_RESPONSE_CODEC_IDENTITY "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_0 != 0x2de477a0UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_1 != 0x231aebcfUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_2 != 0xf351264fUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_3 != 0xfe6ba52dUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_4 != 0xe07a6863UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_5 != 0x0b4ac2b8UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_6 != 0x22753f35UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_7 != 0xaa6c23beUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_0 0x2de477a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_1 0x231aebcfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_2 0xf351264fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_3 0xfe6ba52dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_4 0xe07a6863UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_5 0x0b4ac2b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_6 0x22753f35UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_7 0xaa6c23beUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RegisterValues_Request.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RegisterValues_Request.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_name_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RegisterValues_Request.reg; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_reg_text;

/** @brief Complete ROS2 interbotix_xs_msgs/srv/RegisterValues_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_name_text name;
    /** @brief Declared field reg; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_reg_text reg;
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_MAX_WIRE_BYTES 400u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_REQUEST_CODEC_IDENTITY                                                                       \
     "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->reg.size > 128u || !uwvm_bounded_utf8(value->reg.data, value->reg.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 4 + value->reg.size;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, value->reg.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->reg.data, value->reg.size);
    *offset += value->reg.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
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
    value->reg.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->reg.size > 128u || value->reg.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->reg.data, p + *offset, value->reg.size);
    *offset += value->reg.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 400u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_0 != 0x420951f1UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_1 != 0xdef51001UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_2 != 0x27c332e0UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_3 != 0x6ede4d4bUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_4 != 0x74f6b057UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_5 != 0x0924c634UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_6 != 0x578f33fcUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_7 != 0xa7f8e4bcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_0 0x420951f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_1 0xdef51001UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_2 0x27c332e0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_3 0x6ede4d4bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_4 0x74f6b057UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_5 0x0924c634UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_6 0x578f33fcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_7 0xa7f8e4bcUL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int32_t data[16];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_values_sequence;

/** @brief Complete ROS2 interbotix_xs_msgs/srv/RegisterValues_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response
{
    /** @brief Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_values_sequence values;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_MAX_WIRE_BYTES 68u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES_RESPONSE_CODEC_IDENTITY                                                                      \
     "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value)
{
    if(!value)
        return 0;
    if(value->values.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value)
{
    size_t n = 0;
    n += 4;
    if(value->values.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_write_fields(
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->values.data[i], 4);
            *offset += 4;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->values.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 68u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_0 != 0xa82e0e4eUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_1 != 0x84c192e9UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_2 != 0xfc2b92d9UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_3 != 0x338521b8UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_4 != 0x83e73feeUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_5 != 0xfa6dcbeeUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_6 != 0xa6689165UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_7 != 0x307fc798UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_0 0xa82e0e4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_1 0x84c192e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_2 0xfc2b92d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_3 0x338521b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_4 0x83e73feeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_5 0xfa6dcbeeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_6 0xa6689165UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_7 0x307fc798UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RobotInfo_Request.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RobotInfo_Request.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_name_text;

/** @brief Complete ROS2 interbotix_xs_msgs/srv/RobotInfo_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_name_text name;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_MAX_WIRE_BYTES 264u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_REQUEST_CODEC_IDENTITY "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 264u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_0 != 0xc1da4467UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_1 != 0xcb515043UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_2 != 0x8ae6e120UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_3 != 0xf49c487cUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_4 != 0x3094c55fUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_5 != 0x8bcde42eUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_6 != 0x81dcdc18UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_7 != 0x0aaeec8bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_0 0xc1da4467UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_1 0xcb515043UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_2 0x8ae6e120UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_3 0xf49c487cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_4 0x3094c55fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_5 0x8bcde42eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_6 0x81dcdc18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_7 0x0aaeec8bUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RobotInfo_Response.mode; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_mode_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RobotInfo_Response.profile_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_profile_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RobotInfo_Response.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_names_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_names_text data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_names_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int16_t data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_ids_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_lower_limits_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_upper_limits_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_velocity_limits_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_sleep_positions_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int16_t data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_state_indices_sequence;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/RobotInfo_Response.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_name_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_name_text data[64];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_name_sequence;

/** @brief Complete ROS2 interbotix_xs_msgs/srv/RobotInfo_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_mode_text mode;
    /** @brief Declared field profile_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_profile_type_text profile_type;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_names_sequence joint_names;
    /** @brief Declared field joint_ids; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_ids_sequence joint_ids;
    /** @brief Declared field joint_lower_limits; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_lower_limits_sequence joint_lower_limits;
    /** @brief Declared field joint_upper_limits; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_upper_limits_sequence joint_upper_limits;
    /** @brief Declared field joint_velocity_limits; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_velocity_limits_sequence joint_velocity_limits;
    /** @brief Declared field joint_sleep_positions; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_sleep_positions_sequence joint_sleep_positions;
    /** @brief Declared field joint_state_indices; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_joint_state_indices_sequence joint_state_indices;
    /** @brief Declared field num_joints; canonical capacity is part of CODEC_IDENTITY. */
    int16_t num_joints;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_name_sequence name;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_MAX_WIRE_BYTES 18474u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_MIN_WIRE_BYTES 42u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO_RESPONSE_CODEC_IDENTITY "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value)
{
    if(!value)
        return 0;
    if(value->mode.size > 128u || !uwvm_bounded_utf8(value->mode.data, value->mode.size))
        return 0;
    if(value->profile_type.size > 128u || !uwvm_bounded_utf8(value->profile_type.data, value->profile_type.size))
        return 0;
    if(value->joint_names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 128u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->joint_ids.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_ids.size; ++i)
        {
        }
    }
    if(value->joint_lower_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_lower_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_lower_limits.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->joint_upper_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_upper_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_upper_limits.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->joint_velocity_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_velocity_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_velocity_limits.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->joint_sleep_positions.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_sleep_positions.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_sleep_positions.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->joint_state_indices.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_state_indices.size; ++i)
        {
        }
    }
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 128u || !uwvm_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value)
{
    size_t n = 0;
    n += 4 + value->mode.size;
    n += 4 + value->profile_type.size;
    n += 4;
    if(value->joint_names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->joint_ids.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_ids.size; ++i)
        {
            n += 2;
        }
    }
    n += 4;
    if(value->joint_lower_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_lower_limits.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->joint_upper_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_upper_limits.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->joint_velocity_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_velocity_limits.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->joint_sleep_positions.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_sleep_positions.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->joint_state_indices.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_state_indices.size; ++i)
        {
            n += 2;
        }
    }
    n += 2;
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
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->mode.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->mode.data, value->mode.size);
    *offset += value->mode.size;
    uwvm_bounded_put(p + *offset, value->profile_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->profile_type.data, value->profile_type.size);
    *offset += value->profile_type.size;
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
    uwvm_bounded_put(p + *offset, value->joint_ids.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_ids.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->joint_ids.data[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_lower_limits.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_lower_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_lower_limits.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_upper_limits.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_upper_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_upper_limits.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_velocity_limits.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_velocity_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_velocity_limits.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_sleep_positions.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_sleep_positions.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_sleep_positions.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_state_indices.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_state_indices.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->joint_state_indices.data[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->num_joints, 2);
    *offset += 2;
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
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->mode.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->mode.size > 128u || value->mode.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->mode.data, p + *offset, value->mode.size);
    *offset += value->mode.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->profile_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->profile_type.size > 128u || value->profile_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->profile_type.data, p + *offset, value->profile_type.size);
    *offset += value->profile_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 128u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_ids.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_ids.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_ids.size; ++i)
        {
            if(*offset > n || n - *offset < 2)
                return 0;
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->joint_ids.data[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_lower_limits.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_lower_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_lower_limits.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joint_lower_limits.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_upper_limits.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_upper_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_upper_limits.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joint_upper_limits.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_velocity_limits.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_velocity_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_velocity_limits.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joint_velocity_limits.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_sleep_positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_sleep_positions.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_sleep_positions.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joint_sleep_positions.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_state_indices.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_state_indices.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_state_indices.size; ++i)
        {
            if(*offset > n || n - *offset < 2)
                return 0;
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->joint_state_indices.data[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->num_joints, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->name.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->name.data[i].size > 128u || value->name.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->name.data[i].data, p + *offset, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 42u || length > 18474u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_0 != 0x5cde26deUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_1 != 0xd7925f04UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_2 != 0xd6e33180UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_3 != 0xe1545be9UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_4 != 0x88e3adb3UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_5 != 0xc9493d4cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_6 != 0x25ef429eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_7 != 0x34844cb3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_0 0x5cde26deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_1 0xd7925f04UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_2 0xd6e33180UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_3 0xe1545be9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_4 0x88e3adb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_5 0xc9493d4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_6 0x25ef429eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_7 0x34844cb3UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/TorqueEnable_Request.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/srv/TorqueEnable_Request.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_name_text;

/** @brief Complete ROS2 interbotix_xs_msgs/srv/TorqueEnable_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_name_text name;
    /** @brief Declared field enable; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t enable;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_MAX_WIRE_BYTES 265u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->enable > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->enable, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->enable, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 265u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_0 != 0x8e59c520UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_1 != 0xd72f96d8UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_2 != 0x61cda0a4UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_3 != 0xf9e58e01UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_4 != 0x768fa533UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_5 != 0x9b533feeUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_6 != 0x3c01149eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_7 != 0x205a2297UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_0 0x8e59c520UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_1 0xd72f96d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_2 0x61cda0a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_3 0xf9e58e01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_4 0x768fa533UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_5 0x9b533feeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_6 0x3c01149eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_7 0x205a2297UL

/** @brief Complete ROS2 interbotix_xs_msgs/srv/TorqueEnable_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response;

# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_valid(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_write_fields(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response* value)
{
    return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response* value)
{
    roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
